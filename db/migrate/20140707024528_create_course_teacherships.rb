class CreateCourseTeacherships < ActiveRecord::Migration[5.0]
  def change
    create_table :course_teacherships do |t|
			t.integer :course_id
			t.integer :teacher_id
    end
		add_index :course_teacherships, :course_id
		add_index :course_teacherships, :teacher_id
  end
end
