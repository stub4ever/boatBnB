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

ActiveRecord::Schema.define(version: 20160311132545) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boat_reviews", force: :cascade do |t|
    t.text     "description"
    t.integer  "rating"
    t.integer  "booking_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "boat_reviews", ["booking_id"], name: "index_boat_reviews_on_booking_id", using: :btree

  create_table "boats", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "category"
    t.string   "photo"
    t.integer  "size"
    t.string   "address"
    t.string   "city"
    t.integer  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "owner_id"
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "boats", ["owner_id"], name: "index_boats_on_owner_id", using: :btree

  create_table "bookings", force: :cascade do |t|
    t.integer  "renter_id"
    t.integer  "owner_id"
    t.date     "check_in_date"
    t.date     "check_out_date"
    t.text     "description"
    t.string   "status",         default: "Pending"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "boat_id"
  end

  add_index "bookings", ["boat_id"], name: "index_bookings_on_boat_id", using: :btree
  add_index "bookings", ["owner_id"], name: "index_bookings_on_owner_id", using: :btree
  add_index "bookings", ["renter_id"], name: "index_bookings_on_renter_id", using: :btree

  create_table "renter_reviews", force: :cascade do |t|
    t.text     "description"
    t.integer  "rating"
    t.integer  "booking_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "renter_reviews", ["booking_id"], name: "index_renter_reviews_on_booking_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "city"
    t.string   "address"
    t.string   "photo"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "boat_reviews", "bookings"
  add_foreign_key "boats", "users", column: "owner_id"
  add_foreign_key "bookings", "boats"
  add_foreign_key "bookings", "users", column: "owner_id"
  add_foreign_key "bookings", "users", column: "renter_id"
  add_foreign_key "renter_reviews", "bookings"
end
