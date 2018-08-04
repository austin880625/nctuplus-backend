class AddColumnNeedUpdateUserCmShip < ActiveRecord::Migration[5.0]
  def change
		add_column :user_coursemapships, :need_update, :integer, :after=>:user_id, :default=>0
  end
end
