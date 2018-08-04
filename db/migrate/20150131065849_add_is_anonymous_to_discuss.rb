class AddIsAnonymousToDiscuss < ActiveRecord::Migration[5.0]
  def change
		add_column :discusses, :is_anonymous, :boolean, :default=>false, :after=> :content
  end
end
