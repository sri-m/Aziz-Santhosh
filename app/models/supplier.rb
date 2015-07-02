class Supplier < ActiveRecord::Base
	has_one :account    #@supplier.find(1).account
end
