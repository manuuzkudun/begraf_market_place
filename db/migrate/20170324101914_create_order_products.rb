class CreateOrderProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :order_products do |t|
      t.references :order, foreign_key: true, index: true
      t.references :shop_product, foreign_key: true, index: true

      t.timestamps
    end
  end
end
