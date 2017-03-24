class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :shop_product
end
