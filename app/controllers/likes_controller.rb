class LikesController < ApplicationController
  before_action :set_tweet
  before_action :set_like, only: [:destroy]

  def create
    if existing_like?
      flash[:notice] = 'you already did you liked'
    else
      @tweet.likes.create(user_id: current_user.id)
    end
      redirect_to root_path
  end

  def destroy
    if existing_like?
      @like.destroy
    else
      flash[:notice] = 'you don t have likes'
      
    end
      redirect_to root_path
  end

  private

  def set_tweet
    @tweet = Tweet.find(params[:tweet_id])
  end

  def existing_like?
    Like.where(user_id: current_user.id, tweet_id: params[:tweet_id]).exists?
  end
  
  def set_like
    @like = @tweet.likes.find(params[:id])
  end
end
