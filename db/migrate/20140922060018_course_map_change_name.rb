class CourseMapChangeName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :course_fields, :course_map_id, :course_field_group_id
  end
end
