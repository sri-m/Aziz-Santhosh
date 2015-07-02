class AddGenderToMyContacts < ActiveRecord::Migration
  def change
    add_column :my_contacts, :gender, :string
  end
end
