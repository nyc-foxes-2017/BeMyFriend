class Post < ApplicationRecord
  has_many :likes
  has_many :posts_users
  belongs_to :user, through: :posts_users

  validates :content, presence: true

end
