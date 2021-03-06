class Tweet < ApplicationRecord
    belongs_to :user
    has_many :likes, dependent: :destroy
    validates :content, presence: true
    paginates_per 50
    #se define un metodo que guarda el campo del rt_ref encontrado del tweet
    
    scope :tweets_for_me, -> (user) { Tweet.where(user_id: user.friends.pluck(:friend_id).uniq) }


    def retweet_ref
        Tweet.find(self.rt_ref)
    end

    def self.search_my_tweets(x)
        @my_tweets = Tweet.all
        my_tweet_id_array = []
        @my_tweets.each do |my_tweet|
            if my_tweet.content.include? "#{x}"
                my_tweet_id_array << my_tweet.id
            end
        end
        self.where(id: my_tweet_id_array)
    end
end
