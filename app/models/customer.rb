class Customer < ActiveRecord::Base
  has_many :rackets, foreign_key: :owner_id
  has_many :stringsets, through: :rackets

  validates :first_name, :last_name, :email, presence: true

  def months_between_string_change
    12 / play_per_week
  end

  def string_changes_per_year
    12 / months_between_string_change
  end
end
