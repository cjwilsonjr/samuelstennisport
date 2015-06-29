class PostmanWorker
  include Sidekiq::Worker

  def perform(name, count)
    puts 'Doing hard work'
    CustomerMailer.customer_email.deliver
  end
end