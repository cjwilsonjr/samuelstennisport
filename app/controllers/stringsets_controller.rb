class StringsetsController < ApplicationController
  include StringsetHelper

  def index
    @stringsets = Stringset.all
    @brands = find_string_brands(@stringsets)
    @descriptions = find_string_descriptions(@stringsets)
  end

  # def update_string_brands
  #   @brands = find_string_brands(@stringsets)
  # end

  # def update_string_descriptions

  # end
end