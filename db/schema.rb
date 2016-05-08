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

ActiveRecord::Schema.define(version: 20160508213804) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "space_listings", force: :cascade do |t|
    t.string   "title"
    t.string   "address"
    t.string   "zip_code"
    t.string   "city"
    t.string   "state"
    t.integer  "space_type"
    t.integer  "environment_type"
    t.integer  "user_id"
    t.text     "description"
    t.decimal  "monthly_rent"
    t.decimal  "day_rent"
    t.integer  "size_width"
    t.integer  "size_height"
    t.integer  "size_length"
    t.boolean  "accessibility"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.integer  "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
