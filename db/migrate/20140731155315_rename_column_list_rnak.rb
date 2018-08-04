class RenameColumnListRnak < ActiveRecord::Migration[5.0]
  def change
  	rename_column :content_list_ranks, :raider_content_list_id, :course_content_list_id
  end
end
