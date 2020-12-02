class PostsController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :post_find, only: [:show, :edit, :update, :destroy]
  def index
    @posts = Post.includes(:user).order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = PostTag.new(post_params, tag_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  def edit
  end

  def update
    @post.update(post_params)
  end

  def destroy
    @post.destroy
  end

  private
  def post_params
    params.require(:post).permit(:caption, :image).merge(user_id: current_user.id)
  end

  def tag_params
    params.require(:post).permit(:tag_name)
  end

  def post_find
    @post = Post.find(params[:id])
  end
end