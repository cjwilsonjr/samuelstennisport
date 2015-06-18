class CreateRackets < ActiveRecord::Migration
  def change
    create_table :rackets do |t|
      t.integer :owner_id
      t.string :brand
      t.integer :price
      t.text :notes
      t.date :model_year
      t.datetime :last_string_change
      t.datetime :next_string_change
      t.timestamps null: false
    end
  end
end
