class Product < ApplicationRecord
  belongs_to :product_category
  has_many :shop_products
end
