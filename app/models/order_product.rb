class OrderProduct < ApplicationRecord
  belongs_to :shop_product
  belongs_to :order
end
