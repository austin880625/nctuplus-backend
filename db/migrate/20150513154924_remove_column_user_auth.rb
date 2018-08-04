class RemoveColumnUserAuth < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :student_id
    remove_column :users, :uid
    remove_column :users, :oauth_token
    remove_column :users, :oauth_expires_at
  end
end
