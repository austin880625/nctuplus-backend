class CreateColleges < ActiveRecord::Migration[5.0]
  def change
    create_table :colleges do |t|
	  t.string :name
	  t.string :real_id
    t.timestamps
    end
  end
end
