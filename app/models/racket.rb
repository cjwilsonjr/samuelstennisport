class Racket < ActiveRecord::Base
  belongs_to :owner, class_name: "Customer"
  has_many :stringsets

  def old_strings?
    if last_string_change
      if last_string_change
      puts "HELLO"
      else
        puts "This is"
      end
    end
  end
end