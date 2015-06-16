class CustomersController < ApplicationController

  def index
    @customers = Customer.all
    # @customer = Customer.new
    @firstnames = @customers.map { |c| c.first_name }
    @lastnames = @customers.map { |c| c.last_name }
    @emails = @customers.map { |c| c.email }
  end

  def show
    @customer = Customer.find_by_id(params[:id])
    puts "CUSTOMER"
    puts @customer
    puts "BASDASD"
    @rackets = Racket.all
    # @racket = Racket.new
    # if @racket.save
    #   @customer.rackets << @racket
    #   redirect_to @racket
    # else
    #   render "rackets/form"
    # end
  end
end