class User < ActiveRecord::Base

  validates :first_name, presence: true
  validates :last_name,  presence: true
  validates :email,      uniqueness: true,
                         format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :password, length: { minimum: 6 }
  has_secure_password
end