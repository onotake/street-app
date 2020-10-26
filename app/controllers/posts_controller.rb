class PostsController < ApplicationController
  before_action :authenticate_user!, except: :index
  def index
    @posts = Post.includes(:user).order("created_at DESC")
  end
end
