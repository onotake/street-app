class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comments = @post.comments.includes(:user)

    @comment = Comment.new(comment_params)
    if @comment.valid?
      @comment.save
      redirect_to "/posts/#{@comment.post.id}" 
    else
      render template: "posts/show"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
