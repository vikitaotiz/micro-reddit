class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  has_one_attached :post_image

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
