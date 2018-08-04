class AddColumnCgCglTimestamps < ActiveRecord::Migration[5.0]
  def change
  	add_timestamps(:course_groups)
  	add_timestamps(:course_group_lists)
  end
end
