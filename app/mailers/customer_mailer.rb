class CustomerMailer < ApplicationMailer

  def customer_email(customer)
    @customer = customer
    @url = "http://samuelstennisport.herokuapp.com/customers"
    mail(to: @customer.email, subject: "Welcome to the customer page")
  end
end
