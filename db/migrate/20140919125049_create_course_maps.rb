class CreateCourseMaps < ActiveRecord::Migration[5.0]
  def change
    create_table :course_maps do |t|
      t.integer :department_id
      t.string :name
      t.text :desc, null: false
      t.integer :semester_id
      t.integer :total_credit, default: 0, null: false
      t.timestamps
    end
    create_table :course_fields do |t|
      t.integer :course_map_id
      t.string :name
      t.text :credit_need
      t.timestamps
    end

    create_table :course_field_lists do |t|
      t.integer :course_field_id
      t.integer :course_id
      t.integer :teacher_id
      t.integer :c_type
      t.integer :user_id

      t.timestamps
    end

  end
end
