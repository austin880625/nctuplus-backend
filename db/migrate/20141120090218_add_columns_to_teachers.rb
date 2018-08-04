class AddColumnsToTeachers < ActiveRecord::Migration[5.0]
  def change
		add_column :teachers, :real_id, :string, after: :id
		add_column :teachers, :is_deleted, :boolean, after: :name
  end
end
