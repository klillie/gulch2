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

ActiveRecord::Schema.define(version: 20130920170214) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tariff_territories", force: true do |t|
    t.string   "name"
    t.integer  "tariff_utility_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tariff_territories", ["tariff_utility_id"], name: "index_tariff_territories_on_tariff_utility_id", using: :btree

  create_table "tariff_territory_zip_code_relationships", force: true do |t|
    t.integer  "tariff_territory_id"
    t.integer  "tariff_zip_code_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tariff_territory_zip_code_rels", force: true do |t|
    t.integer  "tariff_territory_id"
    t.integer  "tariff_zip_code_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tariff_utilities", force: true do |t|
    t.string   "name"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tariff_zip_codes", force: true do |t|
    t.string   "zip_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
