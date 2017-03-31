class ShopProduct < ApplicationRecord
  belongs_to :shop
  belongs_to :product
  monetize :price_cents
end
