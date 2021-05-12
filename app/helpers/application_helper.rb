module ApplicationHelper
    def like(tweet, user)
        tweet.likes.find{|like| like.user_id == user.id}
    end

    # def pre_follow
    #     current_user.friends.find { |friend| friend.friend_id == tweet.user.id }
    # end
end
