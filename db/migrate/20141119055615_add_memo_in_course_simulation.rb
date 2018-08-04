class AddMemoInCourseSimulation < ActiveRecord::Migration[5.0]
  def change
		add_column :course_simulations, :memo, :string, after: :score
		change_column :course_simulations, :course_field_id, :integer, after: :course_detail_id
  end
end
