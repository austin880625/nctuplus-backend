class AddColumnCourseteacherpagecontents < ActiveRecord::Migration[5.0]
  def change
  	add_column :course_teacher_page_contents, :last_user_id, :integer
  end
end
