class RemoveColumnUserAuth2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :activate_token
  end
end
