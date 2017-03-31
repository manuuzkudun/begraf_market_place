class AddPriceToShopProducts < ActiveRecord::Migration[5.0]
  def change
    add_monetize :shop_products, :price, currency: { present: false }
  end
end
