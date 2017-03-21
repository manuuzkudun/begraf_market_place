class CreateProductProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :product_properties do |t|
      t.string :name
      t.string :question
      t.references :product_category, foreign_key: true, index: true

      t.timestamps
    end
  end
end
