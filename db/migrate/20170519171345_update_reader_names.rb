class UpdateReaderNames < ActiveRecord::Migration
  def change
    remove_column :readers, :name, :string
    add_column :readers, :first_name, :string
    add_column :readers, :last_name, :string
  end
end
