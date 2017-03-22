require_relative 'business_cards'
require_relative 'flyers'

[@business_cards_data, @flyers_data].each do |product_category|

  category = ProductCategory.create name: product_category[:name],
    image_url: product_category[:image_url], question: product_category[:question]

  product_category[:properties].each do |property_data|
    property = ProductProperty.new name: property_data[:name],
    question: property_data[:question], show: property_data[:show]
    property.product_category = category
    property.save
    property_data[:values].each do |value_data|
      prop_value = PropertyValue.new value: value_data[:value], image_url: value_data[:image_url]
      prop_value.product_property = property
      prop_value.save
    end
  end
end

business_cards = ProductCategory.first

shop1 = Shop.create name: 'Cool shop', email: 'cool-shop@domain.com', address: 'test address',
  telephone: '697697680', nif: 'jyfjfyyu'

shop2 = Shop.create name: 'Lisbon print', email: 'lisbon-print@domain.com', address: 'test 2 address',
  telephone: '698897680', nif: 'jiiifjfyyu'


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





