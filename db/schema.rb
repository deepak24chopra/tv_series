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

ActiveRecord::Schema.define(version: 20140524183144) do

  create_table "admin_users", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.string   "username"
    t.integer  "episode_id"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "episodes", force: true do |t|
    t.integer  "season_id"
    t.string   "video_url"
    t.string   "torrent_url"
    t.string   "subtitle_url"
    t.string   "image_url"
    t.integer  "episode_number"
    t.string   "name"
    t.string   "description"
    t.text     "storyline"
    t.integer  "likes"
    t.datetime "air_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "veiws"
    t.boolean  "visibility"
  end

  create_table "seasons", force: true do |t|
    t.integer  "serial_id"
    t.string   "image_url"
    t.integer  "season_number"
    t.string   "name"
    t.string   "description"
    t.text     "story"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "serials", force: true do |t|
    t.string   "image_url"
    t.string   "name"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscribe", force: true do |t|
    t.string "name"
    t.string "email"
  end

end
