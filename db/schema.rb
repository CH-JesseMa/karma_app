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

ActiveRecord::Schema.define(version: 20140428204329) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: true do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.integer  "karma_value"
    t.boolean  "status"
    t.string   "type"
    t.string   "title"
    t.string   "content"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "transaction_id"
    t.integer  "user_id"
  end

  create_table "transactions", force: true do |t|
    t.integer  "requester_id"
    t.integer  "servicer_id"
    t.boolean  "requester_agree"
    t.boolean  "servicer_agree"
    t.boolean  "requester_complete"
    t.boolean  "servicer_complete"
    t.boolean  "is_completed",       default: false
    t.integer  "point_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "user_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "location"
    t.boolean  "is_admin"
    t.string   "profile"
    t.string   "image_url"
    t.string   "skills"
    t.integer  "comment_id"
    t.integer  "points",          default: 10
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree

end
