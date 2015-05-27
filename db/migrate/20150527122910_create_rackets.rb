class CreateRackets < ActiveRecord::Migration
  def change
    create_table :rackets do |t|
      t.belongs_to :owner
      t.string :brand
      t.integer :price
      t.text :notes
      t.date :model_year
      t.datetime :last_string_change
      t.timestamps
    end
  end
end
