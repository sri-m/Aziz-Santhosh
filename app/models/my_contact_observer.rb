class MyContactObserver < ActiveRecord::Observer
	observe MyContact
    def before_create(my_contact)
        my_contact.name.upcase!
    end

    def before_update(my_contact)
        my_contact.name.capitalize!
    end

    def after_create(my_contact)
    	UserMailer.registration_confirmation(my_contact).deliver
    end

end
