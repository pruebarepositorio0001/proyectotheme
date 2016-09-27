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

ActiveRecord::Schema.define(version: 20160925223850) do

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coments", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "user_id"
    t.integer  "livingroom_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "coments", ["livingroom_id"], name: "index_coments_on_livingroom_id"
  add_index "coments", ["user_id"], name: "index_coments_on_user_id"

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.datetime "date"
    t.string   "description"
    t.integer  "capacity"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "events", ["user_id"], name: "index_events_on_user_id"

  create_table "genders", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "karaokes", force: :cascade do |t|
    t.datetime "date"
    t.integer  "score"
    t.integer  "user_id"
    t.integer  "song_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "karaokes", ["song_id"], name: "index_karaokes_on_song_id"
  add_index "karaokes", ["user_id"], name: "index_karaokes_on_user_id"

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "livingrooms", force: :cascade do |t|
    t.string   "name"
    t.integer  "capacity"
    t.boolean  "state"
    t.integer  "local_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "livingrooms", ["local_id"], name: "index_livingrooms_on_local_id"

  create_table "locals", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "state"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "locals", ["user_id"], name: "index_locals_on_user_id"

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.boolean  "availability"
    t.string   "description"
    t.boolean  "state"
    t.string   "image"
    t.integer  "local_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "products", ["local_id"], name: "index_products_on_local_id"

  create_table "profiles", force: :cascade do |t|
    t.string   "lastname"
    t.string   "mother_lastname"
    t.string   "email"
    t.string   "dni"
    t.string   "telephone"
    t.string   "photo"
    t.boolean  "state"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

  create_table "reserves", force: :cascade do |t|
    t.string   "name"
    t.datetime "date"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "reserves", ["user_id"], name: "index_reserves_on_user_id"

  create_table "songs", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "artist_id"
    t.integer  "language_id"
    t.integer  "gender_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "songs", ["artist_id"], name: "index_songs_on_artist_id"
  add_index "songs", ["gender_id"], name: "index_songs_on_gender_id"
  add_index "songs", ["language_id"], name: "index_songs_on_language_id"

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
