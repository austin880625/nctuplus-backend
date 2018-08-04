class AddColumnPass < ActiveRecord::Migration[5.0]
  def change
#  	add_column :course_field_groups, :pass, :integer, :default=>0
  	add_column :course_fields, :pass, :integer, :default=>0
  end
end
