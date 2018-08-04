class DropNewcomerClubs < ActiveRecord::Migration[5.0]
  def change
    drop_table :newcomer_clubs
  end
end
