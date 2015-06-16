class RacketsController < ApplicationController

  def index
    @rackets = Racket.all
  end

  def create
    @racket = Racket.find_by(id: params[:id])
    @stringset = @racket.stringsets
  end

  def show
    @racket = Racket.find_by(id: params[:id])
  end

end