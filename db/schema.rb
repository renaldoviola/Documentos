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

ActiveRecord::Schema.define(version: 20150915034048) do

  create_table "cities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "state_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "sigla",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "establishments", force: :cascade do |t|
    t.string   "name",                limit: 255
    t.string   "city",                limit: 255
    t.string   "state",               limit: 255
    t.string   "neighborhood",        limit: 255
    t.string   "address",             limit: 255
    t.integer  "zipcode",             limit: 4
    t.string   "avatar",              limit: 255
    t.boolean  "status"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.datetime "creation"
    t.integer  "city_id",             limit: 4
    t.string   "avatar_file_name",    limit: 255
    t.string   "avatar_content_type", limit: 255
    t.integer  "avatar_file_size",    limit: 4
    t.datetime "avatar_updated_at"
    t.integer  "user_id",             limit: 4
  end

  create_table "items", force: :cascade do |t|
    t.string   "plate",      limit: 255
    t.boolean  "status"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "menu_id",    limit: 4
  end

  create_table "menus", force: :cascade do |t|
    t.datetime "data"
    t.string   "weekday",          limit: 255
    t.string   "price",            limit: 255
    t.boolean  "status"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "establishment_id", limit: 4
  end

  create_table "products", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.string   "image_url",   limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "uf",         limit: 255
    t.integer  "country_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "states", ["country_id"], name: "index_states_on_country_id", using: :btree

  add_foreign_key "cities", "states"
  add_foreign_key "states", "countries"
end
