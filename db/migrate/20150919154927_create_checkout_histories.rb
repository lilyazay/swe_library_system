class CreateCheckoutHistories < ActiveRecord::Migration
  def change
    create_table :checkout_histories do |t|
      t.string :email
      t.string :isbn
      t.string :checkout_timestamp
      t.datetime :due_date
      t.datetime :returned_date
      t.boolean :late

      t.timestamps null: false
    end
  end
end
