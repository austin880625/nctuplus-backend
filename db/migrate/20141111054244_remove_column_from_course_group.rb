class RemoveColumnFromCourseGroup < ActiveRecord::Migration[5.0]
  def change
		remove_column :course_groups, :name
		remove_column :course_groups, :course_id
  end
end
