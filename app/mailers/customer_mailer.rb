class CustomerMailer < ApplicationMailer

  def customer_email(customer, racket)
    @customer = customer
    @racket = racket
    @stringset = racket.stringsets[-1]
    @url = "mailto:tennisport@aol.com"
    mail(to: @customer.email, subject: "#{@racket.brand} Racket String Change Due Date")
  end

  def one_week_reminder_email(customer, racket)
    @customer = customer
    @racket = racket
    @stringset = racket.stringsets[-1]
    @url = "mailto:tennisport@aol.com"
    mail(to: @customer.email, subject: "Reminder: #{@racket.brand} Racket Needs New Strings")
  end

  def next_day_reminder_email(customer, racket)
    @customer = customer
    @racket = racket
    @stringset = racket.stringsets[-1]
    @url = "mailto:tennisport@aol.com"
    mail(to: @customer.email, subject: "Reminder: #{@racket.brand} Racket Needs New Strings Tomorrow")
  end
end
