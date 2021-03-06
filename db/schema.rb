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

ActiveRecord::Schema.define(version: 20131112151545) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "advertisements", force: true do |t|
    t.string   "url"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "adv_url"
  end

  create_table "news", force: true do |t|
    t.string "content"
    t.string "header"
  end

  create_table "pages", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trip_categories", force: true do |t|
    t.string "name"
    t.string "tag"
  end

  create_table "trip_descriptions", force: true do |t|
    t.integer "trip_id"
    t.integer "day"
    t.text    "description"
  end

  add_index "trip_descriptions", ["trip_id"], name: "index_trip_descriptions_on_trip_id"

  create_table "trip_photos", force: true do |t|
    t.string  "url"
    t.text    "description"
    t.integer "trip_id"
  end

  add_index "trip_photos", ["trip_id"], name: "index_trip_photos_on_trip_id"

  create_table "trip_schedules", force: true do |t|
    t.datetime "date_start"
    t.datetime "date_end"
    t.float    "price"
    t.integer  "trip_id"
  end

  add_index "trip_schedules", ["trip_id"], name: "index_trip_schedules_on_trip_id"

  create_table "trips", force: true do |t|
    t.string  "name"
    t.integer "trip_category_id"
    t.text    "description"
    t.text    "keywords"
    t.integer "order_number"
    t.boolean "show_in_upcoming"
    t.text    "price_description"
  end

  add_index "trips", ["trip_category_id"], name: "index_trips_on_trip_category_id"

end
