class RenameBookCtships < ActiveRecord::Migration[5.0]
  def change
		rename_table :book_ctsships, :book_trade_info_ctsships
		rename_column :book_trade_info_ctsships, :book_id, :book_trade_info_id
  end
end
