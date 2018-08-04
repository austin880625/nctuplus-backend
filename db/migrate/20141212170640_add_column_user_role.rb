class AddColumnUserRole < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :role, :integer, :default=>1
  	remove_column :users, :email
  	remove_column :users, :activated
  end
end
