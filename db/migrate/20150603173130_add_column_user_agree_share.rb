class AddColumnUserAgreeShare < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :agree_share, :boolean, :default=>false, :after=>:agree
  end
end
