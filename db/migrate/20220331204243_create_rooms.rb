class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms, if_not_exists: true do |t|
      t.integer :number, index: true
      t.integer :capacity, :limit => 3
      t.integer :size
      t.text :description, :null => false
      t.string :picture

      t.timestamps
    end
    add_reference :rooms, :building
    add_reference :rooms, :configuration
    add_reference :rooms, :category
  end
end
