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

ActiveRecord::Schema.define(version: 20170414134421) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drones", force: :cascade do |t|
    t.string   "name"
    t.string   "photo"
    t.float    "weight"
    t.string   "skills"
    t.float    "speed"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_drones_on_user_id", using: :btree
  end

  create_table "drones_races", id: false, force: :cascade do |t|
    t.integer "drone_id", null: false
    t.integer "race_id",  null: false
  end

  create_table "races", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.date     "date"
    t.float    "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "photo"
    t.string   "nationality"
    t.string   "email"
    t.string   "password"
    t.string   "password_confirmation"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_foreign_key "drones", "users"
end