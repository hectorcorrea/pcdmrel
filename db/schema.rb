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

ActiveRecord::Schema.define(version: 20151027191650) do

  create_table "coll_colls", force: :cascade do |t|
    t.integer  "order",                limit: 4
    t.integer  "parent_collection_id", limit: 4
    t.integer  "child_collection_id",  limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "collections", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "pcdmfiles", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "content_type", limit: 255
    t.integer  "size",         limit: 4
    t.string   "url",          limit: 255
    t.integer  "pcdmwork_id",  limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "work_works", force: :cascade do |t|
    t.integer  "parent_work_id", limit: 4
    t.integer  "child_work_id",  limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "works", force: :cascade do |t|
    t.string   "title",         limit: 255
    t.integer  "collection_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
