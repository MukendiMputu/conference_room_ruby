class CreateInvitations < ActiveRecord::Migration[6.1]
  def change
    create_table :invitations, if_not_exists: true do |t|
      t.integer "guest_id"
      t.integer "booking_id"
      t.string "status"
      
      t.timestamps
    end
    add_index("invitations", ["booking_id", "guest_id"])
  end
end
