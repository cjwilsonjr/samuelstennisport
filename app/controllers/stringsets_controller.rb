class StringsetsController < ApplicationController
  include RacketHelper

  def index
    @stringsets = Stringset.all
    @brands = find_string_brands(@stringsets)
    @descriptions = find_string_descriptions(@stringsets)
  end

  def create
    @racket = Racket.find_by_id(params[:racket_id])
    @stringset = @racket.stringsets.create(stringset_params)
    @stringset.update(racket_id: @racket.id)
    @racket.update(last_string_change: Time.now)
    next_string_change_date(@racket, @customer)
    redirect_to @racket
  end

  private
    def stringset_params
      params.require(:stringset).permit(:brand, :description, :game, :notes, :restring_price)
    end
end