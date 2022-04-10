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

ActiveRecord::Schema.define(version: 2022_04_09_160932) do

  create_table "active_storage_attachments", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", charset: "utf8mb4", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

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

  create_table "buildings", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", limit: 45
    t.string "code", limit: 5
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["code"], name: "index_buildings_on_code"
    t.index ["name"], name: "index_buildings_on_name"
  end

  create_table "categories", charset: "utf8mb4", force: :cascade do |t|
    t.string "category_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "configurations", charset: "utf8mb4", force: :cascade do |t|
    t.string "configuration_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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
    t.index ["content"], name: "index_events_on_content", length: 768
    t.index ["event_start_time"], name: "index_events_on_event_start_time"
    t.index ["title"], name: "index_events_on_title"
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

  create_table "rooms", charset: "utf8mb4", force: :cascade do |t|
    t.integer "number"
    t.integer "capacity", limit: 3
    t.integer "size"
    t.text "description", null: false
    t.string "picture"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "building_id"
    t.bigint "configuration_id"
    t.bigint "category_id"
    t.index ["building_id"], name: "index_rooms_on_building_id"
    t.index ["category_id"], name: "index_rooms_on_category_id"
    t.index ["configuration_id"], name: "index_rooms_on_configuration_id"
    t.index ["number"], name: "index_rooms_on_number"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "uname", limit: 25
    t.string "first_name", limit: 25
    t.string "last_name", limit: 50
    t.string "email", default: "", null: false
    t.string "password_digest"
    t.string "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["first_name"], name: "index_users_on_first_name"
    t.index ["last_name"], name: "index_users_on_last_name"
    t.index ["uname"], name: "index_users_on_uname"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
