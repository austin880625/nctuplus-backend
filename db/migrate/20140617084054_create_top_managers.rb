class CreateTopManagers < ActiveRecord::Migration[5.0]
  def change
    create_table :top_managers do |t|
	  t.integer :user_id
	  t.integer :all_users
	  t.integer :all_departments
      t.timestamps
    end
  end
end
