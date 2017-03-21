require_relative 'business_cards'

business_cards = ProductCategory.create name: @business_cards_data[:name],
  image_url: @business_cards_data[:image_url]

@business_cards_data[:properties].each do |property_data|
  property = ProductProperty.new name: property_data[:name], question: property_data[:question]
  property.product_category = business_cards
  property.save
  property_data[:values].each do |value_data|
    prop_value = PropertyValue.new value: value_data[:value], image_url: value_data[:image_url]
    prop_value.product_property = property
    prop_value.save
  end
end


shop1 = Shop.create name: 'Awesome shop', email: 'awesome-shop@domain.com', address: 'test address',
  telephone: '697697680', nif: 'jyfjfyyu'

shop2 = Shop.create name: 'Lisbon print', email: 'lisbon-print@domain.com', address: 'test 2 address',
  telephone: '698897680', nif: 'jiiifjfyyu'

product1 = Product.new format: 'format1', paper_type: 'paper1', quantity: 200, number_of_people: 2,
  print_mode: 'mode 1', print_finish: 'finish 1'
product1.product_category = business_cards
product1.save

shop_product1 = ShopProduct.new price: 1000, avalaible: true, delivery_days: 5
shop_product1.product = product1
shop_product1.shop = shop1
shop_product1.save

shop_product2 = ShopProduct.new price: 1500, avalaible: true, delivery_days: 3
shop_product2.product = product1
shop_product2.shop = shop2
shop_product2.save


