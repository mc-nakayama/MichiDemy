class CreateSeminars < ActiveRecord::Migration[5.2]
  def change
    create_table :seminars do |t|
      t.string :name 
      t.date :date
      t.time :start_time
      t.time :end_time
      t.integer :subscription
      t.integer :price
      t.integer :cost
      t.text :other
      t.timestamps null:true
    end
  end
end
