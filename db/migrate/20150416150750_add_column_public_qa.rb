class AddColumnPublicQa < ActiveRecord::Migration[5.0]
  def change
  	add_column :course_map_public_comments, :course_map_id, :integer
  	add_column :course_map_public_comments, :checked, :integer, :default=>0
  end
end
