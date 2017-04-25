FactoryGirl.define do
  factory :product_property_value do
    value { Faker::Lorem.word }
    image_url { Faker::Internet.url }
    notes { Faker::Lorem.sentence }
    product_property { FactoryGirl.create(:product_property)}
  end
end

