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

ActiveRecord::Schema.define(version: 20140511035924) do

  create_table "event_guests", force: true do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_items", force: true do |t|
    t.integer  "event_id"
    t.integer  "supply_item_id"
    t.integer  "count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_pictures", force: true do |t|
    t.integer  "event_id"
    t.binary   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.integer  "user_id"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id"
    t.integer  "state"
  end

  create_table "item_pictures", force: true do |t|
    t.integer  "supply_item_id"
    t.binary   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.float   "longitude"
    t.float   "latitude"
    t.integer "capacity"
    t.string  "country",   default: "Unknown", null: false
    t.integer "cost",      default: 0,         null: false
    t.string  "name",      default: "Unknown", null: false
  end

  create_table "supply_items", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "surname"
    t.string   "email",            null: false
    t.string   "hashed_passwords", null: false
    t.string   "salt"
  end

  create_table "vendor_items", force: true do |t|
    t.string  "name"
    t.integer "item_id"
    t.integer "vendor_id"
  end

  create_table "vendors", force: true do |t|
    t.string "name"
  end

end
