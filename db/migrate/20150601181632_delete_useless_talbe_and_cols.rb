class DeleteUselessTalbeAndCols < ActiveRecord::Migration[5.0]
  def change
#    drop_table  :user_scores
#    drop_table  :course_map_public_comments
#    drop_table  :course_map_public_sub_comments
    remove_column :courses, :department_id
  end
end
