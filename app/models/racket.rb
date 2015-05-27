class Racket < ActiveRecord:Base
  belongs_to :user
  belongs_to :customer
  has_many :strings
end