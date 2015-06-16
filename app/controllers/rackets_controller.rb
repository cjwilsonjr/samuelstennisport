class RacketsController < ApplicationController
  include RacketHelper

  def index
    @rackets = Racket.all
  end

  def create
    @racket = Racket.find_by(id: params[:id])
    @stringset = @racket.stringsets
  end

  def show
    @racket = Racket.find_by(id: params[:id])
    @stringsets = Stringset.all
    @brands = find_string_brands(@stringsets)
    @descriptions = find_string_descriptions(@stringsets)
    @games = find_games(@stringsets)
    @prices = find_string_prices(@stringsets)
  end

  def edit

  end

end