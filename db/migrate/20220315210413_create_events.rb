class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events, if_not_exists: true  do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.date :event_date
      t.time :event_start_time
      t.time :event_end_time

      t.timestamps
    end
    add_index("events", "title")
    add_index("events", "content")
    add_index("events", "event_start_time")
  end
end
