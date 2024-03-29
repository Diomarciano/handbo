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

ActiveRecord::Schema.define(version: 20170217172844) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.text     "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.text     "title"
    t.string   "judul"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", primary_key: "category_id", force: :cascade do |t|
    t.text     "image"
    t.integer  "parent_id"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_paths", id: false, force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "path_id"
    t.integer  "level"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "post_id"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homes", force: :cascade do |t|
    t.text     "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "length_classes", force: :cascade do |t|
    t.integer  "length_class_id"
    t.decimal  "value"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "permintaans", force: :cascade do |t|
    t.string   "barang"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "item"
    t.string   "subitem"
    t.datetime "from"
    t.datetime "until"
    t.decimal  "price"
    t.string   "description"
    t.string   "stadt"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "nama"
    t.integer  "nomor"
    t.binary   "image"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "searches", force: :cascade do |t|
    t.string   "keywords"
    t.string   "kota"
    t.float    "price"
    t.string   "new"
    t.string   "show"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscribes", force: :cascade do |t|
    t.text     "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "email_confirmed"
    t.string   "confirm_token"
    t.string   "nama"
    t.integer  "nomor"
  end

  create_table "weight_classes", id: false, force: :cascade do |t|
    t.integer  "weight_class_id"
    t.decimal  "value"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
