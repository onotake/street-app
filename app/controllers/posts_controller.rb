class PostsController < ApplicationController
  before_action :authenticate_user!, except: :index
  def index
    @posts = Post.includes(:user).order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(post_params)
    else
      render :edit
    end
  end

  def destroy
    post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:caption, :image).merge(user_id: current_user.id)
  end
end
