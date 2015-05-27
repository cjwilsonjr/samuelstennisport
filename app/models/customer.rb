class Customer < ActiveRecord::Base
  has_many :rackets, foreign_key: :owner_id
  has_many :stringsets, through: :rackets
end
