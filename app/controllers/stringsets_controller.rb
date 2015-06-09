class StringsetsController < ApplicationController
  include StringsetHelper

  def index
    @stringsets = Stringset.all
    @brands = find_string_brands(@stringsets)
    @descriptions = find_string_descriptions(@stringsets)
  end
end