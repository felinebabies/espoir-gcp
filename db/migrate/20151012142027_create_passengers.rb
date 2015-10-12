class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.belongs_to :game
      t.belongs_to :user
      t.string :name
      t.integer :starCount, default: 3
      t.integer :money, default: 0
      t.integer :debt, default: 0
      t.integer :g_count, default: 4
      t.integer :c_count, default: 4
      t.integer :p_count, default: 4
      t.integer :location, default: 0

      t.timestamps null: false
    end
  end
end
