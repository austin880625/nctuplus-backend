class ChangeUserGradeToSemester < ActiveRecord::Migration[5.0]
  def change
		rename_column :users, :grade_id, :semester_id
  end
end
