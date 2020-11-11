class PostTag
  include ActiveModel::Model
  attr_accessor :caption, :tag_name
  with_options presence: true do
    validates :caption
    validates :tag_name
  end

  def save
    post = Post.create(post: post)
    tag = Tag.create(tag_name: tag_name)
    PostTagRelation.create(post_id: post.id, tag_name_id: tag_name.id)
  end
end
