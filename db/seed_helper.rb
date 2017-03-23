def get_combinations(product_data)
  combinations = ['']
  product_data[:properties].each do |property|
    combinations = combinations.x(property[:values])
  end
  combinations = combinations.to_a
  combinations.map(&:shift)
  combinations
end


def get_product_values_hash(combinations, property_names)
  combinations.map do |combination|
    out = {}
    combination.each_with_index do |value, index|
      prop_name = property_names[index]
      if prop_name == "quantity"
        out[prop_name.to_sym] = value[:value].to_i
      else
        out[prop_name.to_sym] = value[:value]
      end
    end
    out
  end
end
