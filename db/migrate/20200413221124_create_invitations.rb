class CreateInvitations < ActiveRecord::Migration[6.1]
  def change
    create_table :invitations, if_not_exists: true do |t|
      t.integer :guest_id
      t.integer :booking_id
      t.boolean :accepted, :default => false
      
      t.timestamps
    end
    add_index("invitations", %w[booking_id guest_id])
  end
end
