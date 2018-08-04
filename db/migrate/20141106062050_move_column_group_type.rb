class MoveColumnGroupType < ActiveRecord::Migration[5.0]
  def change
  	#remove_column :course_field_groups, :group_type
  	add_column :course_fields, :field_type, :integer, :default=>0
  end
end
