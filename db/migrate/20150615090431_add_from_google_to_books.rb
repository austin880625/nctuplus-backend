class AddFromGoogleToBooks < ActiveRecord::Migration[5.0]
  def change
		add_column :books, :from_google, :boolean, :after=> :id, :default=>false, :null=>false
  end
end
