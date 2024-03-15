class User < ApplicationRecord
  has_secure_password
  after_create :create_profile

  has_many :blogs
  has_one :profile
  has_many :likes
  
  validates :username, :email, :first_name, :last_name, presence: true
end
  