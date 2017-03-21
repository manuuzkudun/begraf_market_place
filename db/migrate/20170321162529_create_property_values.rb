class CreatePropertyValues < ActiveRecord::Migration[5.0]
  def change
    create_table :property_values do |t|
      t.string :value
      t.string :image_url
      t.string :notes
      t.references :product_property, foreign_key: true, index: true

      t.timestamps
    end
  end
end
