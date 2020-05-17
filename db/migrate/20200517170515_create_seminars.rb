class CreateSeminars < ActiveRecord::Migration[5.2]
  def change
    create_table :seminars do |t|
      t.string :name
      t.datetime :time
      t.text :address
      t.integer :telephone
      t.integer :price
      t.integer :cost
      t.text :other
      t.timestamps
    end
  end
end
