class AddScoreToCourseSimulations < ActiveRecord::Migration[5.0]
  def change
    add_column :course_simulations, :score, :string, after: :course_detail_id
  end
end
