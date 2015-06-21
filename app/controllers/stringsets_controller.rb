class StringsetsController < ApplicationController
  include RacketHelper

  def index
    @stringsets = Stringset.all
    @brands = find_string_brands(@stringsets).sort
    # @descriptions = find_string_descriptions(@stringsets)
    if request.xhr?
      puts "HELLO"
      puts params[:brand_type]
      puts params[:id]
      @descriptions = find_string_descriptions(Stringset.where(brand: params[:brand_type]))
      puts @descriptions
      render json: @descriptions
    end
  end

  def create
    @racket = Racket.find_by_id(params[:racket_id])
    customer = @racket.owner
    @stringset = @racket.stringsets.create(stringset_params)
    @stringset.update(racket_id: @racket.id)
    @racket.update(last_string_change: Time.now)
    next_string_change_date(@racket, customer)
    redirect_to @racket
  end

  private
    def stringset_params
      params.require(:stringset).permit(:brand, :description, :game, :notes, :restring_price)
    end
end