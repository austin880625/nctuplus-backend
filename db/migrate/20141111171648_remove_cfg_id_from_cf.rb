class RemoveCfgIdFromCf < ActiveRecord::Migration[5.0]
  def change
		remove_column :course_fields, :course_field_group_id
  end
end
