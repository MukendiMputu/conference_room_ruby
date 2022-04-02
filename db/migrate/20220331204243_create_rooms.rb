class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms, if_not_exists: true do |t|
      t.string :building, :limit => 45, index: true
      t.string :number, :limit => 15, index: true
      t.integer :capacity, :limit => 3
      t.integer :size
      t.column "picture", :string
      t.text :description, :null => false

      t.timestamps
    end
    add_reference :rooms, :configuration
    add_reference :rooms, :category
  end
end
