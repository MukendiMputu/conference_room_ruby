class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes, if_not_exists: true do |t|
      t.integer "booking_id"
      t.text "content"
      t.integer "prev_note"

      t.timestamps
    end
    add_index("notes", "booking_id")
  end
end
