class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
    if request.xhr?
        render "_form", layout: false
    else
        render "new"
    end
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
        redirect_to @customer
    else
        render "new"
    end
  end

  def show
    @customer = Customer.find_by_id(params[:id])
    @rackets = @customer.rackets
  end

  private
    def customer_params
        params.require(:customer).permit(:first_name, :last_name, :email, :play_per_week)
    end
end