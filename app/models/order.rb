class Order < ActiveRecord::Base
	belongs_to :customer, :foreign_key => "customer_id"   #@order.customer
	validates :ord_name, :ord_price, :ord_qty, :presence => true
end
