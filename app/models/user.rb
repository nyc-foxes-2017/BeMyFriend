class User < ApplicationRecord
  has_many :posts_users
  has_many :posts, through: :posts_users
  has_many :likes
  has_many :user_friends, class_name: :Friend
  has_many :friend_requests

  validates :email, :name, :password, presence: true
  validates :email, uniqueness: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
