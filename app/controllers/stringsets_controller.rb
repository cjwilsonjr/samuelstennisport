class StringsetsController < ApplicationController
  include RacketHelper

  def index
    @stringsets = Stringset.all
    @brands = find_string_brands(@stringsets).sort
    if request.xhr?
      @descriptions = find_string_descriptions(Stringset.where(brand: params[:brand_type]))
      render json: @descriptions
    end
  end

  def create
    @racket = Racket.find_by_id(params[:racket_id])
    customer = @racket.owner
    @stringset = @racket.stringsets.new(stringset_params)
    if @stringset.save
      @stringset.update(racket_id: @racket.id)
      @racket.update(last_string_change: Time.now)
      next_string_change_date(@racket, customer)
      CustomerMailer.customer_email(customer, @racket).deliver_now
      CustomerMailer.delay_until(@racket.next_string_change - 1.week).one_week_reminder_email(customer, @racket)
      CustomerMailer.delay_until(@racket.next_string_change - 1.day).next_day_reminder_email(customer, @racket)
      redirect_to @racket
    end
  end

  private
    def stringset_params
      params.require(:stringset).permit(:brand, :description, :game, :notes, :restring_price)
    end
end