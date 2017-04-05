class Post < ApplicationRecord
  has_many :likes
  has_many :posts_users
  belongs_to :user

  validates :content, presence: true

end
