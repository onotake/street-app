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
    @post = PostTag.new(params: post_params)
    # @post = Post.new(test_params)
    # @post.image.attach(test_params[:image]) 
    if @post.save
      redirect_to root_path
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
    params.require(:post).permit(:caption, :image, :tag_name).merge(user_id: current_user.id)
  end

  def post_find
    @post = Post.find(params[:id])
  end

  def test_params
    params.require(:post).permit(:caption, :image).merge(user_id: current_user.id)
  end
end