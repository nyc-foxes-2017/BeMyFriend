class FriendsController < ApplicationController


  def create
    @friend = current_user.user_friends.new(friend_user_id: params[:user_id])
    @friend.save
    redirect_to :back
  end

  def destroy
    @friend.find_by(user_id: current_user.id, friend_user_id: params[:user_id])
    @friend.destroy
    redirect_to :back
  end

end
