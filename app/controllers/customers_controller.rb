class CustomersController < ApplicationController

  def index
    @customers = Customer.all
    # @customer = Customer.new
    @firstnames = @customers.map { |c| c.first_name }
    @lastnames = @customers.map { |c| c.last_name }
    @emails = @customers.map { |c| c.email }
  end

  # def new
  #   # @customer = Customer.new
  # end

  def show
    @customer = Customer.find_by(id: params[:id])
    @rackets = Racket.all
  end
end