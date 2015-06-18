class Racket < ActiveRecord::Base
  belongs_to :owner, class_name: "Customer"
  has_many :stringsets



  # def next_string_change_date(customer)
  #   if last_string_change
  #     change_date = last_string_change + (customer.months_between_string_change).months
  #     self.update(next_string_change: change_date)
  #   else
  #     return false
  #   end
  # end

  # def old_strings?
  #   if last_string_change
  #     if last_string_change + 1.month <= Time.now
  #       puts "Strings are old"
  #     else
  #       puts "Strings are ok"
  #     end
  #   end
  # end
end