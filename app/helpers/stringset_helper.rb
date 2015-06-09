module StringsetHelper
  def find_string_brands(stringsets)
    stringsets.map{ |stringset| stringset.brand }.uniq
  end

  def find_string_descriptions(stringsets)
    stringsets.map{ |stringset| stringset.description }.uniq
  end

end