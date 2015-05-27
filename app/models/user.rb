class User < ActiveRecord::Base
  has_many :rackets
  has_secure_password
end