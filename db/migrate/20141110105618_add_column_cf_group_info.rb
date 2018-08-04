class AddColumnCfGroupInfo < ActiveRecord::Migration[5.0]
  def change
    add_column :course_field_lists, :group_id, :integer
  end
end
