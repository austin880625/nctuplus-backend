class CreateGrades < ActiveRecord::Migration[5.0]
  def change
    create_table :grades, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :name
      #t.timestamps
    end
  end
end
