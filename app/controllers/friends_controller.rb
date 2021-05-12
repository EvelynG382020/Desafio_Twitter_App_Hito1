class FriendsController < ApplicationController
    before_action :set_user
    before_action :set_friend, only: [:destroy]

    # def create
    #     current_user.friends.create(friend_id: @user.id)

    #     redirect_to root_path
    # end

    # def destroy
    #     if already_follow?
    #         @friend.destroy
    #         redirect_to root_path
    #     end
    # end

    # private
    # def set_user
    #     @user = User.find(params[:user_id])
    # end

    # def set_friend
    #     @friend = current_user.friends.where(friend_id: @user.id)
    # end

    # def already_follow?
    #     @user = User.find(params[:user_id])
    #     Friend.where(user_id: current_user.id, friend_id @user.id).exists?
    # end
end
