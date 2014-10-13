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

ActiveRecord::Schema.define(version: 20141013042855) do

  create_table "batches", force: true do |t|
    t.datetime "start_time"
    t.integer  "student"
    t.integer  "duration"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.text     "title"
    t.text     "description"
    t.text     "duration"
    t.decimal  "fees",          precision: 8, scale: 2
    t.string   "feature_image"
    t.boolean  "status"
    t.integer  "batch_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "courses", ["batch_id"], name: "index_courses_on_batch_id"

  create_table "recruitment_partners", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "feature_image"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "settings", force: true do |t|
    t.string   "setting_key"
    t.string   "setting_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "testimonials", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "feature_image"
    t.text     "type"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
