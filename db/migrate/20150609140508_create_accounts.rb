class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :customer_id
      t.string :acc_name
      t.string :acc_type
      t.string :acc_balance
      t.text :acc_bank_address

      t.timestamps null: false
    end
  end
end
