class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :email
      t.string :name
      t.string :password
      t.string :student_type
      t.integer :checkouts, default: 3

      t.timestamps null: false
    end
  end
end
