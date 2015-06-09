module StringsetHelper
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

end