require_relative 'business_cards'
require_relative 'flyers'
require_relative 'banners'
require_relative 'seed_helper'

[@business_cards_data, @flyers_data, @banners_data].each do |product_category|

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


[@business_cards_data, @flyers_data, @banners_data].each do |product_data|
  combinations = get_combinations(product_data)
  property_names = product_data[:properties].map { |property| property[:name] }
  product_values_array = get_product_values_hash(combinations, property_names)

  product_category = ProductCategory.where(name: product_data[:name]).first

  product_values_array.each do |product_values|
    product = Product.new(product_values)
    product.product_category = product_category
    product.save
  end

end


shop1 = Shop.create name: 'Cool shop', email: 'cool-shop@domain.com', address: 'test address',
  telephone: '697697680', nif: 'jyfjfyyu', rating: 4.0

shop2 = Shop.create name: 'Lisbon print', email: 'lisbon-print@domain.com', address: 'test 2 address',
  telephone: '698897680', nif: 'jiiifjfyyu', rating: 4.5

shop3 = Shop.create name: 'Printrus', email: 'printrus@domain.com', address: 'test 3 address',
  telephone: '698897680', nif: 'jikghfjfyyu', rating: 3.0


Product.all.each do |product|
  Shop.all.each do |shop|
    ShopProduct.create product: product, shop: shop,
      avalaible: true, delivery_days: rand(7), price: rand(100.00..500.00).round(2)
  end
end


OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"








