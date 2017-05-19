class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts  do |table|
      table.string :person, null: false
      table.integer :book_id, null: false
      table.string :checkout_date, null: false 
    end
  end
end
