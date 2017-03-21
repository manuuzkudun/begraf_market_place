class ProductProperty < ApplicationRecord
  belongs_to :product_category
  has_many :property_values
end
