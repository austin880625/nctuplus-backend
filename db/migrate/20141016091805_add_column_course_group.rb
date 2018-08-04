class AddColumnCourseGroup < ActiveRecord::Migration[5.0]
  def change
  	add_column :course_groups, :course_map_id, :integer, :default=>0
  end
end
