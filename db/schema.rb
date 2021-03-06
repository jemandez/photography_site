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

ActiveRecord::Schema.define(version: 20170410211049) do

  create_table "admins", force: :cascade do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "generations", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "school_id"
    t.string   "password_hash"
    t.string   "did"
    t.string   "dpath"
    t.string   "cursor"
    t.index ["school_id"], name: "index_generations_on_school_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "photos"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "generation_id"
    t.string   "did"
    t.string   "dpath"
    t.string   "cursor"
    t.index ["generation_id"], name: "index_groups_on_generation_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "did"
    t.string   "dpath"
    t.string   "cursor"
    t.string   "description"
  end

  create_table "students", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "url"
    t.integer  "group_id"
    t.string   "did"
    t.string   "dpath"
    t.string   "facebook"
    t.string   "telephone"
    t.string   "mail"
    t.datetime "photo_timestamp"
    t.index ["group_id"], name: "index_students_on_group_id"
  end

end
