class Post < ApplicationRecord
  has_many :likes
  has_many :comments
  has_many :post_tags
  has_many :tags, through :post_tags
  belongs_to :user
  has_one_attached :image
end