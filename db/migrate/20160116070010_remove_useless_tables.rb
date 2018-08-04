class RemoveUselessTables < ActiveRecord::Migration[5.0]
  def change
#    drop_table :course_simulations
#    drop_table :discuss_verifies
#    drop_table :discuss_likes
    drop_table :temp_course_simulations
  end
end
