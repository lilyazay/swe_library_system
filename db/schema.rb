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

ActiveRecord::Schema.define(version: 20150919175706) do

  create_table "admins", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.boolean  "pre_configured"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  create_table "books", force: :cascade do |t|
    t.integer  "isbn"
    t.string   "title"
    t.string   "author"
    t.string   "genre"
    t.string   "shelving_code"
    t.string   "publisher"
    t.string   "language"
    t.datetime "due_date"
    t.boolean  "available"
    t.boolean  "late"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "checkout_histories", force: :cascade do |t|
    t.string   "email"
    t.string   "isbn"
    t.string   "checkout_timestamp"
    t.string   "return_timestamp"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "library_members", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.string   "encrypted_password"
    t.string   "salt"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.string   "password"
    t.string   "student_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end
