module ApplicationHelper
    def like(tweet, user)
        tweet.likes.find{|like| like.user_id == user.id}
    end
    
    def pre_follow(user)
        return false if current_user.nil?
        current_user.friends.find { |friend| friend.friend_id == user.id }
    end
    
end
