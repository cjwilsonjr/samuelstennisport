class CustomerMailer < ApplicationMailer
  default from: 'christopher.wilson.jr@gmail.com'

  def customer_email(customer)
    @customer = customer
    @url = 'http://samuelstennisport.herokuapp.com/customers'
    mail(to: @customer.email, subject: 'Welcome to the customer page')
  end
end
