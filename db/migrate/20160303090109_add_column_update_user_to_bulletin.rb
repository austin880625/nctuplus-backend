class AddColumnUpdateUserToBulletin < ActiveRecord::Migration[5.0]
  def change
  	 add_column :bulletins, :update_user, :string
  	 add_column :bulletins, :hidden_type, :boolean, :null => false, :default => false
  end
end
