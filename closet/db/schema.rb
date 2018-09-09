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

ActiveRecord::Schema.define(version: 20180908222621) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.text     "name"
    t.text     "abbreviation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "currencies", force: :cascade do |t|
    t.text     "name"
    t.text     "symbol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hacctypes", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.text     "name"
    t.text     "o_name"
    t.text     "brand"
    t.text     "item_type"
    t.text     "color"
    t.decimal  "p_price"
    t.text     "price_currency"
    t.date     "date_p"
    t.date     "date_r"
    t.text     "notes"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.decimal  "f_price"
    t.text     "ref_url"
    t.text     "ha_type"
    t.text     "img_file_name"
    t.text     "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
    t.integer  "user_id"
    t.boolean  "notarrived"
    t.integer  "year"
    t.string   "jewelry_type"
    t.index ["user_id"], name: "index_items_on_user_id", using: :btree
  end

  create_table "jtypes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.text     "name"
    t.text     "abbreviation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.text     "username"
    t.text     "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
