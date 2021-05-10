class Tweet < ApplicationRecord
    belongs_to :user
    has_many :likes, dependent: :destroy
    validates :content, presence: true

    def retweet_ref
        Tweet.find(self.rt_ref)
    end

end
