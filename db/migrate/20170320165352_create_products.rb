class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :product_category, foreign_key: true, index: true
      t.string :format
      t.string :paper_type
      t.integer :quantity
      t.string :print_mode
      t.string :print_finish
      t.integer :number_of_people
      t.boolean :install_service

      t.timestamps
    end
  end
end
