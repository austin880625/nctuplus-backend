class AddHiddenTypeToSlogan < ActiveRecord::Migration[5.0]
  def change
    add_column :slogans, :hidden_type, :boolean, :null => false, :default => false
  end
end
