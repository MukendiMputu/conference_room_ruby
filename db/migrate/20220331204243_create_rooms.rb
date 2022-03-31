class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :building, :limit => 45
      t.string :number, :limit => 15
      t.integer :capacity, :limit => 3
      t.string :configuration, :limit => 50
      t.column "picture", :string
      t.text :description, :null => false

      t.timestamps
    end
    add_index("rooms", "number")
    add_index(:rooms, :capacity)
    add_index(:rooms, :configuration)
  end
end
