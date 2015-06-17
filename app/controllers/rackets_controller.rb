class RacketsController < ApplicationController
  include RacketHelper

  def index
    @rackets = Racket.all
  end

  def new
    @customer = Customer.find_by(id: params[:customer_id])
    @racket = Racket.new
  end

  def create
    # @racket = Racket.find_by_id(params[:racket_id])
    # @stringset = @racket.stringsets.create(stringset_params)
    # @stringset.update(racket_id: @racket.id)
    # redirect_to racket_path(@racket)

    @customer = Customer.find_by_id(params[:customer_id])
    # @racket = Racket.find_by(id: params[:id])
    # @stringset = @racket.stringsets
    @racket = @customer.rackets.create(racket_params)
    @racket.update(owner_id: @customer.id)
    redirect_to @racket
    # if @racket.save
    #   @customer.rackets << @racket
    #   redirect_to @racket
    # else
    #   render "rackets/form"
    # end
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
      params.require(:racket).permit(:brand, :price, :notes, :model_year)
    end

end