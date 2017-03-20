class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :telephone
      t.string :nif

      t.timestamps
    end
  end
end
