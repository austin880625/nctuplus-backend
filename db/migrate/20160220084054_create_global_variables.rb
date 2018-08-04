class CreateGlobalVariables < ActiveRecord::Migration[5.0]
  def change
    create_table :global_variables do |t|
			t.string :data
			t.string :desc
			t.timestamps
    end
  end
end
