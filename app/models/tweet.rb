class Tweet < ApplicationRecord
    belongs_to :user
    has_many :likes, dependent: :destroy
    validates :content, presence: true
    paginates_per 50
    #se define un metodo que guarda el campo del rt_ref encontrado del tweet
    def retweet_ref
        Tweet.find(self.rt_ref)
    end


    scope :tweets_for_me, ->(users_list) { where(
        user_id: users_list.map do |friend|
            friend.friend_id 
        end
    ) }

end
