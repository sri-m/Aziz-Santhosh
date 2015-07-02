class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer_id
      t.string :ord_name
      t.string :ord_price
      t.string :ord_qty

      t.timestamps null: false
    end
  end
end
