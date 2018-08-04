class RemoveColumnPass < ActiveRecord::Migration[5.0]
  def change
  	remove_column :course_fields, :pass
  end
end
