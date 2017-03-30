class CreateOrderProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :order_products do |t|
      t.references :shop_product, foreign_key: true, index: true
      t.references :order, foreign_key: true, index: true
      t.string :image

      t.timestamps
    end
  end
end
