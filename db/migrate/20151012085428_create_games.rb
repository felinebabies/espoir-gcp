class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :startTime
      t.integer :term
      t.integer :status, default: 0, null: false

      t.timestamps null: false
    end
  end
end
