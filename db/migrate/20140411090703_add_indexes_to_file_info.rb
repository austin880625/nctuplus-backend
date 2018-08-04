class AddIndexesToFileInfo < ActiveRecord::Migration[5.0]
  def change
  
#  add_index :file_infos, :course_id
  add_index :file_infos, :owner_id
  end
end
