class RemoveTableCmpcShip < ActiveRecord::Migration[5.0]
  def change
		drop_table  :course_map_public_comment_selfships
  end
end
