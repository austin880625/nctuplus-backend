class AddColumnImportFailCs < ActiveRecord::Migration[5.0]
  def change
	add_column :course_simulations, :import_fail, :integer, :default=>0
  end
end
