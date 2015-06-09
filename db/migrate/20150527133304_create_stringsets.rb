class CreateStringsets < ActiveRecord::Migration
  def change
    create_table :stringsets do |t|
      t.integer :racket_id
      t.string :brand
      t.string :description
      t.string :game
      t.text :notes
      t.integer :restring_price
      t.timestamps null: false
    end
  end
end
