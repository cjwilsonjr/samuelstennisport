class Stringset < ActiveRecord::Base
  belongs_to :racket
  has_many :owners, through: :racket
end
