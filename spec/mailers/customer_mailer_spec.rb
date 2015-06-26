require "rails_helper"

RSpec.describe CustomerMailer, type: :mailer do
  before(:each) do
  end

  pending "customer_mailer#reminder_email" do
    let(:customer) { Customer.create(first_name: "Randy", last_name: "Test", email: "christopher.wilson.jr@gmail.com", play_per_week: 3) }
    let(:racket) { Racket.create!(brand: "Nike", owner: customer, last_string_change: Time.now, next_string_change: Time.now + 1.week) }
    let(:stringset) { Stringset.create!(brand: "Babolat", description: "Flex", racket: racket) }
    it "should deliver an email one week before the next string change date" do
      # @joe = Customer.create!(first_name: "Joe", last_name: "Test", email: "christopher.wilson.jr@gmail.com", play_per_week: 3)
      CustomerMailer.one_week_reminder_email(customer, racket).deliver_later(wait_until: (racket.next_string_change - 1.week))
      ActionMailer::Base.deliveries.count.should == 1
    end
  end
end
