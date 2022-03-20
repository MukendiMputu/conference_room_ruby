class CreateGuests < ActiveRecord::Migration[6.1]
  def change
    create_table :guests, if_not_exists: true do |t|
      t.column :first_name, :string, :limit => 25
      t.string :last_name, :limit => 50
      t.string :email
      t.integer :booking_id

      t.timestamps
    end
    add_index("guests", "booking_id")
  end
end
