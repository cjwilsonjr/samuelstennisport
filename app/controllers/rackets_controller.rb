class RacketsController < ApplicationController
  include RacketHelper

  def index
    @rackets = Racket.all
  end

  def new
    @customer = Customer.find_by(id: params[:customer_id])
    @racket = Racket.new
    if request.xhr?
      render "_form", layout: false
    else
      render "new"
    end
  end

  def create
    @customer = Customer.find_by_id(params[:customer_id])
    @racket = @customer.rackets.new(racket_params)
    if @racket.save
      @racket.update(owner_id: @customer.id)
      # CustomerMailer.customer_email(current_user).deliver_now
      # CustomerMailer.reminder_email(@customer).delay_for(@customer.next_string_change - 1.day)
      redirect_to @racket
    else
      render "new"
    end
  end

  def show
    @racket = Racket.find_by(id: params[:id])
    @stringsets = Stringset.all
    @brands = find_string_brands(@stringsets)
    @descriptions = find_string_descriptions(@stringsets)
    @games = find_games(@stringsets)
    @prices = find_string_prices(@stringsets)
  end

    private
    def racket_params
      params.require(:racket).permit(:brand, :price, :notes, :model_year, :last_string_change)
    end

end