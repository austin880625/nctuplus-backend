class AddColumnsToCourseDetails < ActiveRecord::Migration[5.0]
  def change
		add_column :course_details, :unique_id, :string, after: :id
		add_column :course_details, :grade, :string, after: :semester_id
		
  end
end
