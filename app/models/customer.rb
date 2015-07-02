class Customer < ActiveRecord::Base
	has_many :orders   #@customer.orders
	validates :name, :email, :cell, :address, :presence => true
	accepts_nested_attributes_for :orders, :reject_if => :ord_name_invalid
	private
	def ord_name_invalid
		attributes[:ord_name].blank?
	end
end
