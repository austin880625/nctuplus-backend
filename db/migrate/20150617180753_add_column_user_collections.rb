class AddColumnUserCollections < ActiveRecord::Migration[5.0]
  def change
    add_column :user_collections, :name, :string, :after=>"semester_id", :default=>"" 
  end
end
