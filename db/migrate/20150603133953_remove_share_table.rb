class RemoveShareTable < ActiveRecord::Migration[5.0]
  def change
		drop_table :user_share_images
  end
end
