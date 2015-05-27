class CreateStringsets < ActiveRecord::Migration
  def change
    create_table :stringsets do |t|
      t.integer :racket_id
      t.string :brand
      t.integer :price
      t.timestamps null: false
    end
  end
end
