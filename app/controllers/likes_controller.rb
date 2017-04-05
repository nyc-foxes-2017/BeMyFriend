class LikesController < ApplicationController
  def create
    post = Post.find(params[:id])
    @like = current_user.likes.new(post_id: post.id)
    @like.save
    redirect_to :back
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, post_id: params[:id])
    @like.destroy
    redirect_to :back
  end


end
