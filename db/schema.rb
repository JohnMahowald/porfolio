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

ActiveRecord::Schema.define(version: 20141014184818) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: true do |t|
    t.string   "data",       null: false
    t.string   "icon_url",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["data"], name: "index_contacts_on_data", using: :btree

  create_table "features", force: true do |t|
    t.string   "description", null: false
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "title",       null: false
    t.string   "github_url",  null: false
    t.string   "description", null: false
    t.string   "demo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "preview_img"
  end

  create_table "skills", force: true do |t|
    t.string   "title",      null: false
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ord"
  end

end