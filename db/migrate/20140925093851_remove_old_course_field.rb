class RemoveOldCourseField < ActiveRecord::Migration[5.0]
  def change
  	drop_table :course_groups
  	drop_table :course_group_lists
  end
end
