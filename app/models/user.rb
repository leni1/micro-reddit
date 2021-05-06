class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :full_name, presence: true, uniqueness: true, length: { maximum: 255 }
  validates :email, presence: true, uniqueness: true, length: { maximum: 255 }
  validates :password, presence: true, length: { minimum: 8 }
end
