class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, :password_digest, presence: true, uniqueness: true

  has_many :posts
  has_many :comments
end