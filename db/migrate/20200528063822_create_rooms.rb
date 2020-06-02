class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :url
      t.string :address
      t.string :tel
      t.integer :capacity
      t.integer :cost
      t.text :other
      t.timestamps
    end
  end
end
