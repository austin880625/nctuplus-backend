class ChangeCourseMapsColumn < ActiveRecord::Migration[5.0]
  def change
    change_column :course_fields, :credit_need, :integer, default: 0
    change_column :course_fields, :user_id, :integer, after: :course_field_group_id
    add_column :course_fields, :color, :text, after: :credit_need
  end
end
