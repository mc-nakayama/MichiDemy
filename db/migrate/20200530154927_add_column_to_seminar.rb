class AddColumnToSeminar < ActiveRecord::Migration[5.2]
  def change
    add_column :seminars,:room_id,:integer
  end
end
