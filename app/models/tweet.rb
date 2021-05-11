class Tweet < ApplicationRecord
    belongs_to :user
    has_many :likes, dependent: :destroy
    validates :content, presence: true
    #se define un metodo que guarda el campo del rt_ref encontrado del tweet
    def retweet_ref
        Tweet.find(self.rt_ref)
    end

end
