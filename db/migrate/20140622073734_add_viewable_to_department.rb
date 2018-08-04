class AddViewableToDepartment < ActiveRecord::Migration[5.0]
  def change
    add_column :departments, :viewable, :string
  end
end