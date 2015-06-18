class Customer < ActiveRecord::Base
  has_many :rackets, foreign_key: :owner_id
  has_many :stringsets, through: :rackets

  def months_between_string_change
    12 / play_per_week
  end

  def string_changes_per_year
    12 / months_between_string_change
  end
end
