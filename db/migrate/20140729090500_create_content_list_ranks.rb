class CreateContentListRanks < ActiveRecord::Migration[5.0]
  def change
    create_table :content_list_ranks do |t|
    	t.integer :raider_content_list_id
    	t.integer :user_id
    	t.integer :rank 
    	
    	
    	t.timestamps
    end
  end
end
