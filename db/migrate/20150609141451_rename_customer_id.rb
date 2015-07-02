class RenameCustomerId < ActiveRecord::Migration
	def self.up
		rename_column :accounts, :customer_id, :supplier_id
	end

	def self.down
		rename_column :accounts, :supplier_id, :customer_id
	end

end
