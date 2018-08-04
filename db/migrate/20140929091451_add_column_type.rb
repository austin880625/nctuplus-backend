class AddColumnType < ActiveRecord::Migration[5.0]
  def change
  	add_column :course_group_lists, :lead, :integer, :default=>0
  	add_column :course_groups, :gtype, :integer, :default=>0
  end
end
