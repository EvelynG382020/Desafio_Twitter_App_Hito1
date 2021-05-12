class Tweet < ApplicationRecord
    belongs_to :user
    has_many :likes, dependent: :destroy
    validates :content, presence: true
    paginates_per 50
    #se define un metodo que guarda el campo del rt_ref encontrado del tweet
    def retweet_ref
        Tweet.find(self.rt_ref)
    end

    def get_user_name
        self.user.user_name
    end

    def get_user_photo
        self.user.user_photo 
    end

end
