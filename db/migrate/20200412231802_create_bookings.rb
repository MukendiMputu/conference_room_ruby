class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings, if_not_exists: true do |t|
      t.string :agenda, :limit => 45
      t.date :booking_date, :null => false
      t.time :start_time
      t.time :end_time
      t.integer :user_id
      t.integer :room_id

      t.timestamps
    end
    add_index("bookings", "user_id")
    add_index("bookings", "room_id")
  end
end
