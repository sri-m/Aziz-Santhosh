class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :subject

      t.timestamps null: false
    end
  end
end
