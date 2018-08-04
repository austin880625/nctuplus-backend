class CreateUserCollections < ActiveRecord::Migration[5.0]
  def change
    create_table :user_collections do |t|
			t.belongs_to :user
			t.integer :target_id
			t.belongs_to :semester
			t.timestamps
    end
  end
end
