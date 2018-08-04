class AddCosAndTeacherIdToCourseDetails < ActiveRecord::Migration[5.0]
  def change
		add_column :course_details, :course_id, :integer, after: :id
		add_column :course_details, :teacher_id, :integer, after: :id
		add_index :course_details, :course_id
		add_index :course_details, :teacher_id
  end
end
