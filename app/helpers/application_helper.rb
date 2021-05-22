module ApplicationHelper
    def like(tweet, user)
        tweet.likes.find{|like| like.user_id == user.id}
    end
<<<<<<< HEAD
    
    def pre_follow(user)
        return false if current_user.nil?
        current_user.friends.find { |friend| friend.friend_id == user.id }
    end
    
=======

    # def pre_follow
    #     current_user.friends.find { |friend| friend.friend_id == tweet.user.id }
    # end
>>>>>>> 16e11cf7e9e35eef6cdbc647c854ad091c1bb60b
end
