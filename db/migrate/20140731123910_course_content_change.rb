class CourseContentChange < ActiveRecord::Migration[5.0]
  def change
  	rename_table :course_teacher_page_contents, :course_content_heads
  	rename_table :raider_content_lists, :course_content_lists
  end
end
