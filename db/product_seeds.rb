require_relative 'business_cards'

def get_combinations(product_category)
  combinations = ['']
  product_category[:properties].each do |property|
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
      prop_name = @business_cards_data[:properties][index][:name]
      if prop_name == "quantity"
        out[prop_name.to_sym] = value[:value].to_i
      else
        out[prop_name.to_sym] = value[:value]
      end
    end
    out
  end
end

combinations = get_combinations(@business_cards_data)
property_names = @business_cards_data[:properties].map { |property| property[:name] }
product_values_array = get_product_values_hash(combinations, property_names)


business_cards = ProductCategory.first

product_values_array.each do |product_values|
  product = Product.new(product_values)
  product.product_category = business_cards
  product.save
end

Product.all.each do |product|
  Shop.all.each do |shop|
    ShopProduct.create product: product, shop: shop, avalaible: true, delivery_days: rand(7), price: rand(200)
  end
end


