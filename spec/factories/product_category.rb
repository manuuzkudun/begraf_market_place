FactoryGirl.define do
  factory :product_category do
    name { Faker::Lorem.word }
    image_url { Faker::Internet.url }
    question { Faker::Lorem.sentence }
    after(:create) do |product_category|
      create_list(:product_property, 3, product_category: product_category)
    end
  end
end

