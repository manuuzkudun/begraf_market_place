class CreateStoreProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :store_products do |t|
      t.references :shop, foreign_key: true, index: true
      t.references :product, foreign_key: true, index: true
      t.integer :price
      t.boolean :avalaible
      t.integer :delivery_days

      t.timestamps
    end
  end
end
