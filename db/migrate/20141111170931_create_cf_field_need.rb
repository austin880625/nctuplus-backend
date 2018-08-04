class CreateCfFieldNeed < ActiveRecord::Migration[5.0]
  def change
    create_table :cf_field_need do |t|
      t.integer :course_field_id
      t.integer :field_need, default: 0
      t.timestamps
    end
  end
end
