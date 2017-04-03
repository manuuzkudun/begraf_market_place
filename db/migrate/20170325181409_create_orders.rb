class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :order_status, foreign_key: true, index: true
      t.references :user, foreign_key: true, index: true
      t.monetize :total_amount, currency: { present: false }

      t.timestamps
    end
  end
end
