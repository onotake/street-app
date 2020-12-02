class PostTag
  include ActiveModel::Model
  attr_accessor :caption, :tag_name, :tag_id, :image, :user_id, :post_id

  with_options presence: true do
    validates :caption, length: { maximum: 1000 }
    validates :tag_name
    validates :image
  end

  def initialize(post_params,tag_params)
    @post = post_params
    @tag = tag_params
  end



  def save
    post = Post.new(@post)
    post.image.attach(@post[:image])
    post.save
    tag = Tag.where(@tag).first_or_initialize
    tag.save
    PostTagRelation.create(post_id: post.id, tag_id: tag.id)
  end
end
