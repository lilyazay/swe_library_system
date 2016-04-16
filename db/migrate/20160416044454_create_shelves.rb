class CreateShelves < ActiveRecord::Migration
  def change
    create_table :shelves do |t|
      t.string :code
      t.integer :capacity
      t.string :location

      t.timestamps null: false
    end
  end
end
