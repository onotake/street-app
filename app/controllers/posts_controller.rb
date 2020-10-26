class PostsController < ApplicationController
  before_action :authenticate_user!, except: :index
  def index
    @posts = Post.includes(:user).order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  private

  def post_params
    params.require(:post).permit(:caption, :image).merge(user_id: current_user.id)
  end
end
