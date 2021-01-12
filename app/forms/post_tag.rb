class PostTag
  include ActiveModel::Model
  attr_accessor :caption, :tag_name, :tag_id, :image, :user_id, :post_id

  with_options presence: true do
    validates :caption, length: { maximum: 1000 }
    validates :image
  end

  def save
    return false if invalid?
    post = Post.new(caption: caption, user_id: user_id)
    post.image.attach(image)
    post.save
    tag = Tag.where(tag_name: tag_name).first_or_initialize
    tag.save
    PostTagRelation.create(post_id: post.id, tag_id: tag.id)
  end
end
