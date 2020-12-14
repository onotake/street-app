class Post < ApplicationRecord
  has_many :likes,                              dependent: :destroy
  has_many :comments,                           dependent: :destroy
  has_many :post_tag_relations,                 dependent: :destroy
  has_many :tags, through: :post_tag_relations, dependent: :destroy
  belongs_to :user
  has_one_attached :image
end
