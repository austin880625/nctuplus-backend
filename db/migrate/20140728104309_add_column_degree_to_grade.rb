class AddColumnDegreeToGrade < ActiveRecord::Migration[5.0]
  def change
		add_column :grades, :degree, :integer, after: :name
  end
end
