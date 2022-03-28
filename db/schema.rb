# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_03_15_210413) do

  create_table "bookings", charset: "utf8mb4", force: :cascade do |t|
    t.string "agenda", limit: 45
    t.date "booking_date", null: false
    t.time "start_time"
    t.time "end_time"
    t.integer "user_id"
    t.integer "room_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["room_id"], name: "index_bookings_on_room_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "events", charset: "utf8mb4", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "user_id"
    t.date "event_date"
    t.time "event_start_time"
    t.time "event_end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "guests", charset: "utf8mb4", force: :cascade do |t|
    t.string "first_name", limit: 25
    t.string "last_name", limit: 50
    t.string "email"
    t.integer "booking_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_id"], name: "index_guests_on_booking_id"
  end

  create_table "invitations", charset: "utf8mb4", force: :cascade do |t|
    t.integer "guest_id"
    t.integer "booking_id"
    t.boolean "accepted", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_id", "guest_id"], name: "index_invitations_on_booking_id_and_guest_id"
  end

  create_table "notes", charset: "utf8mb4", force: :cascade do |t|
    t.text "content"
    t.integer "prev_note"
    t.integer "booking_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_id"], name: "index_notes_on_booking_id"
  end

end
