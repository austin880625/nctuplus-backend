class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :raider_content_lists, :type, :content_type
  end
end
