class AddViewTimesToCourseDetail < ActiveRecord::Migration[5.0]
  def change
		add_column :course_details, :view_times, :integer, default: 0, null: false
  end
end
