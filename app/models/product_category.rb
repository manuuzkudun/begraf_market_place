class ProductCategory < ApplicationRecord
  has_many :products
  has_many :product_properties
end
