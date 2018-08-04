class CreateComment < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
    	t.integer :user_id
    	t.integer :course_teachership_id
    	t.integer :content_type
    	t.text :content
    end
  end
end
