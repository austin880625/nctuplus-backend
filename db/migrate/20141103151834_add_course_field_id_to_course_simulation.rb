class AddCourseFieldIdToCourseSimulation < ActiveRecord::Migration[5.0]
  def change
		add_column :course_simulations, :course_field_id, :integer
		add_index :course_simulations, :course_field_id
  end
end
