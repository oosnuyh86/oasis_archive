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

ActiveRecord::Schema.define(version: 20150917121111) do

  create_table "archives", force: true do |t|
    t.string   "title"
    t.string   "kor_title"
    t.string   "source_name"
    t.text     "description", limit: 16777215
    t.string   "doc_id"
    t.date     "release"
    t.string   "keyword_1"
    t.string   "keyword_2"
    t.string   "keyword_3"
    t.text     "english_doc", limit: 16777215
    t.text     "korean_doc",  limit: 16777215
    t.string   "translator"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "source_url"
  end

  add_index "archives", ["doc_id"], name: "index_archives_on_doc_id", unique: true, using: :btree

  create_table "movies", force: true do |t|
    t.string   "title"
    t.integer  "release_year"
    t.float    "price",        limit: 24
    t.text     "description"
    t.string   "imdb_id"
    t.string   "poster_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
