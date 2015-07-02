class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :cell
      t.string :gender
      t.string :group
      t.text :address

      t.timestamps null: false
    end
  end
end
