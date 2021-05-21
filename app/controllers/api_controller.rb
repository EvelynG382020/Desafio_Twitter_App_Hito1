class ApiController < ApplicationController
    include ActionController::HttpAuthentication::Basic::ControllerMethods
    #before_action :verify_authenticity_token, only:[:create_api_tweet]    
    before_action :set_tweet, only: [:show, :update, :destroy]
    skip_before_action :verify_authenticity_token
    http_basic_authenticate_with name: "twitter", password: "prueba"

    def index
        array = []
        Tweet.all.each do |tweet|
            array << {:id => tweet.id, :content => tweet.content, :user_id => tweet.user_id, :likes_count => tweet.likes.count, :retwitted_from => tweet.user.user_name} 
        end
        @tweets = array
        render json: @tweets.last(50)
    end

    def between_dates
        first_date = params[:date1]
        last_date = params[:date2]
        @tweets = Tweet.where(:created_at => first_date..last_date)
        render json: @tweets
    end

    def create_api_tweet
        @tweet = Tweet.new(content: params[:content])
        @tweeet = Tweet.new(content: request.headers["X-CONTENT"], user: @user) 
       
        if @tweet.save
          render json: @tweet, status: :created
        else
          render json: @tweet.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @tweet.destroy
        head :no_content
    end

    private
      def set_tweet
        @tweet = Tweet.find(params[:id])
      end

      def user_tweet
        params.require(:tweet).permit(:email, :password, :user_name, :tweet, :likes )
      end

    
end
