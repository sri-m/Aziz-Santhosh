class MyContact < ActiveRecord::Base
	validates :name, :email, :cell, :address, :presence => true
	validates :email, format: { with: /[a-z0-9.]*(@){1}[a-z0-9]*(\.){1}[a-z]{2,4}/,
    message: "Enter correct email id" }
    validates :cell, numericality: { only_integer: true }, length: { is: 10 }
    validates :address, length: { maximum: 200 }
end
