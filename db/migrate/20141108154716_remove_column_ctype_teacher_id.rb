class RemoveColumnCtypeTeacherId < ActiveRecord::Migration[5.0]
  def change
  	remove_column :course_field_lists, :c_type
  	remove_column :course_field_lists, :teacher_id
  end
end
