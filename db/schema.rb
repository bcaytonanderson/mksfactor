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

ActiveRecord::Schema.define(version: 20141112203602) do

  create_table "cheese_profile_parameters", force: true do |t|
    t.integer "profile_id"
    t.integer "parameter_id"
    t.integer "cheese_id"
  end

  add_index "cheese_profile_parameters", ["cheese_id"], name: "index_cheese_profile_parameters_on_cheese_id"
  add_index "cheese_profile_parameters", ["profile_id"], name: "index_cheese_profile_parameters_on_profile_id"

  create_table "cheeses", force: true do |t|
    t.string   "name",                       null: false
    t.string   "producer",                   null: false
    t.string   "region"
    t.string   "milk"
    t.string   "style"
    t.string   "rennet"
    t.string   "age"
    t.string   "availability"
    t.text     "story"
    t.integer  "user_id",                    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "profiles_count", default: 0, null: false
  end

  create_table "parameters", force: true do |t|
    t.string  "name",                                  null: false
    t.integer "funky",                  default: 0,    null: false
    t.integer "sweet",                  default: 0,    null: false
    t.integer "sour",                   default: 0,    null: false
    t.integer "salty",                  default: 0,    null: false
    t.integer "bitter",                 default: 0,    null: false
    t.integer "savory",                 default: 0,    null: false
    t.integer "users_parameters_count", default: 0,    null: false
    t.boolean "open",                   default: true, null: false
  end

  create_table "profiles", force: true do |t|
    t.integer  "cheese_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parameters_count", default: 0
  end

  create_table "profiles_parameters", id: false, force: true do |t|
    t.integer "parameter_id", null: false
    t.integer "profile_id",   null: false
  end

  add_index "profiles_parameters", ["parameter_id"], name: "index_profiles_parameters_on_parameter_id"
  add_index "profiles_parameters", ["profile_id"], name: "index_profiles_parameters_on_profile_id"

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
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cheeses_count",          default: 0,  null: false
    t.integer  "profiles_count",         default: 0,  null: false
    t.integer  "users_parameters_count", default: 0,  null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

  create_table "users_parameters", force: true do |t|
    t.integer  "user_id"
    t.integer  "parameter_id"
    t.string   "name"
    t.integer  "funky",        default: 0, null: false
    t.integer  "sweet",        default: 0, null: false
    t.integer  "sour",         default: 0, null: false
    t.integer  "salty",        default: 0, null: false
    t.integer  "bitter",       default: 0, null: false
    t.integer  "savory",       default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users_parameters", ["parameter_id"], name: "index_users_parameters_on_parameter_id"
  add_index "users_parameters", ["user_id"], name: "index_users_parameters_on_user_id"

end
