class TagsController < ApplicationController
  def show
    tag = Tag.find(params[:id])
    @tag = tag.tag_name
    @post = tag.posts
  end
end
