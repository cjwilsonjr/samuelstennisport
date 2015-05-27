class CreateStrings < ActiveRecord::Migration
  def change
    create_table :strings do |t|
      t.belongs_to :racket
      t.string :brand
      t.integer :price
      t.timestamps
    end
  end
end
