module RacketHelper
  def find_string_brands(stringsets)
    stringsets.map{ |stringset| stringset.brand }.uniq
  end

  def find_string_descriptions(stringsets)
    stringsets.map{ |stringset| stringset.description }.uniq
  end

  def brand_specific_descriptions(stringsets)
    string_descriptions = stringsets.map do |stringset|
      strings = Stringset.where(brand: stringset.brand)
      strings.map { |string| string.description }
    end
    string_descriptions.uniq
  end

  def find_games(stringsets)
    stringsets.map { |stringset| stringset.game }.uniq
  end

  def find_string_prices(stringsets)
    stringsets.map { |stringset| stringset.restring_price }.uniq.sort
  end

  def next_string_change_date(racket, customer)
    if racket.last_string_change
      change_date = racket.last_string_change + (customer.months_between_string_change).months
      racket.update(next_string_change: change_date)
    else
      return false
    end
  end
end