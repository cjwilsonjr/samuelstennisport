class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name, null:false
      t.string :last_name, null: false
      t.string :email
      t.integer :play_per_week
      t.timestamps null: false
    end
  end
end
