module StringsetHelper
  def find_string_brands(stringsets)
    stringsets.uniq{ |stringset| stringset.brand }
  end

  def find_string_descriptions(stringsets)
    stringsets.uniq{ |stringset| set.description }
  end

end