class Racket < ActiveRecord::Base
  belongs_to :owner, class_name: "Customer"
  has_many :stringsets
end