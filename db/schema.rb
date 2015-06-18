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

ActiveRecord::Schema.define(version: 20150527133304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string   "first_name",    null: false
    t.string   "last_name",     null: false
    t.string   "email"
    t.integer  "play_per_week"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "rackets", force: :cascade do |t|
    t.integer  "owner_id"
    t.string   "brand"
    t.integer  "price"
    t.text     "notes"
    t.date     "model_year"
    t.datetime "last_string_change"
    t.datetime "next_string_change"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "stringsets", force: :cascade do |t|
    t.integer  "racket_id"
    t.string   "brand"
    t.string   "description"
    t.string   "game"
    t.text     "notes"
    t.integer  "restring_price"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",                      null: false
    t.string   "last_name",                       null: false
    t.string   "email",                           null: false
    t.string   "password_digest",                 null: false
    t.boolean  "admin",           default: false, null: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
