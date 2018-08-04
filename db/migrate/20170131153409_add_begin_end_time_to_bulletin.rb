class AddBeginEndTimeToBulletin < ActiveRecord::Migration[5.0]
  def change
    add_column :bulletins, :begin_time, :datetime, :default => '2017-01-01'
    add_column :bulletins, :end_time, :datetime, :default => '2017-01-01'
  end
end
