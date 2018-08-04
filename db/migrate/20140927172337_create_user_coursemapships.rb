class CreateUserCoursemapships < ActiveRecord::Migration[5.0]
  def change
    create_table :user_coursemapships do |t|
			t.integer :course_map_id
			t.integer :user_id
      t.timestamps
    end
		add_index :user_coursemapships, :user_id
		add_index :user_coursemapships, :course_map_id
  end
end
