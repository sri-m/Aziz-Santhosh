class Account < ActiveRecord::Base
	belongs_to :supplier, :foreign_key => "supplier_id"
end
