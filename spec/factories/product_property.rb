FactoryGirl.define do
  factory :product_property do
    name { Faker::Lorem.word }
    question { Faker::Lorem.sentence }
    show { ['text','images'].sample }
    product_category { FactoryGirl.create(:product_category) }
    after(:create) do |product_property|
      create_list(:product_property_value, 3, product_property: product_property)
    end
  end
end
