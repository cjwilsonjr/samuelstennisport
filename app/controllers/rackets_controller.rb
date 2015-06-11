class RacketsController < ApplicationController


  def show
    @racket = Racket.find_by(id: params[:id])
  end

end