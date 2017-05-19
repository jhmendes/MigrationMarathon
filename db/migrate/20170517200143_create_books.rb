class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books  do |table|
      table.string :title, null: false
    end
    add_index :books, :title, unique: true
  end
end
