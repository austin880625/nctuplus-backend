class CreateUserShareImages < ActiveRecord::Migration[5.0]
  def change
    create_table :user_share_images do |t|
      t.belongs_to :user
      t.belongs_to :semester
      t.attachment :image
      
      t.timestamps
    end
  end
end
