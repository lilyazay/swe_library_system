class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :isbn
      t.string :title
      t.string :author
      t.string :genre
      t.string :shelving_code
      t.string :publisher
      t.string :language
      t.datetime :due_date
      t.boolean :available
      t.boolean :late

      t.timestamps null: false
    end
  end
end
