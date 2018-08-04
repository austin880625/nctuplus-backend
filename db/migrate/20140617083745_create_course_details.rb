class CreateCourseDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :course_details do |t|
      t.integer :course_teachership_id
      t.integer :semester_id
      t.string :time
      t.string :room
      t.string :temp_cos_id
      t.string :brief
      t.text :memo
      t.string :reg_num
      t.string :students_limit
      t.string :cos_type
#      t.string :credit

      t.timestamps
    end
    add_index :course_details, :semester_id	
    add_index :course_details, :course_teachership_id
  end
end
