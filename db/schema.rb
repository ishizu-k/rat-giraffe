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

ActiveRecord::Schema.define(version: 20190619031012) do

  create_table "rents", force: :cascade do |t|
    t.string   "note"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "property_name", default: "", null: false
    t.string   "fee",           default: "", null: false
    t.string   "address",       default: "", null: false
    t.string   "age",           default: "", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string   "line_name"
    t.string   "station_name"
    t.string   "walk"
    t.integer  "rent_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["rent_id"], name: "index_stations_on_rent_id"
  end

end
