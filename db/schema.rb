# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160318134533) do

  create_table "buildings", force: true do |t|
    t.string   "building_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "netid"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.boolean  "inactive"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.date     "rdate"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "duration"
    t.string   "name"
    t.string   "note"
    t.integer  "expected_attendance"
    t.boolean  "tentative"
    t.boolean  "recurring"
    t.boolean  "approved"
    t.integer  "person_id"
    t.integer  "room_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reservations", ["person_id"], name: "index_reservations_on_person_id", using: :btree
  add_index "reservations", ["room_id"], name: "index_reservations_on_room_id", using: :btree

  create_table "rooms", force: true do |t|
    t.string   "room_name"
    t.boolean  "inactive"
    t.integer  "building_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rooms", ["building_id"], name: "index_rooms_on_building_id", using: :btree

end
