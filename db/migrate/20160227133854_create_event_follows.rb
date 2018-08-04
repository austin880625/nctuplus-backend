class CreateEventFollows < ActiveRecord::Migration[5.0]
  def change
    create_table :event_follows do |t|
			t.integer :user_id
			t.integer :event_id
      t.timestamps
    end
		add_index :event_follows, :user_id
		add_index :event_follows, :event_id
  end
end
