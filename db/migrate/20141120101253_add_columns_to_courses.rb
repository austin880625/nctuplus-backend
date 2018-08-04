class AddColumnsToCourses < ActiveRecord::Migration[5.0]
  def change
		add_column :courses, :credit, :integer, after: :eng_name
		remove_column :courses, :grade_id
  end
end
