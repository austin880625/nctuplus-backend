class RemoveColumnCmpCommentCmpId < ActiveRecord::Migration[5.0]
  def change
		remove_column :course_map_public_comments, :course_map_public_comment_id
  end
end
