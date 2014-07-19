class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :name
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
