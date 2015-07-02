class UserMailer < ApplicationMailer
	def registration_confirmation(my_contact)
		@my_contact = my_contact
		mail(:to => "azizhaq1@hotmail.com", :subject => "Hi How are you!...")
	end
end
