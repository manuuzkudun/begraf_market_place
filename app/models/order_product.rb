class OrderProduct < ApplicationRecord
  belongs_to :shop_product
  belongs_to :order
  mount_uploader :image, ImageUploader
  monetize :price_cents
end
