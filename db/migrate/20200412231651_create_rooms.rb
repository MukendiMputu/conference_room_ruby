class CreateRooms < ActiveRecord::Migration[6.0]
  def up
    create_table :rooms, if_not_exists: true do |t|
      t.string "building", :limit => 45
      t.string "number", :limit => 15
      t.integer "capacity", :limit => 3
      t.string "configuration", :limit => 50
      t.string "picture"
      t.text "avantgarde", :null => false

      t.timestamps
    end
    add_index("rooms", %w[number capacity configuration])
  end
end
