class User < ApplicationRecord
  validates :name, :email, :password, presence: true
  validates :password, uniqueness: true

  has_many :posts
  has_many :comments
end