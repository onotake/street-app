class LikesController < ApplicationController
  before_action :post_find, only: [:create, :destroy]

  def create
    Like.create(user_id: current_user.id, post_id: params[:post_id])
  end

  def destroy
    Like.find_by(user_id: current_user.id, post_id: params[:post_id]).destroy
  end

  private

  def post_find
    @post = Post.find(params[:post_id])
  end
end
