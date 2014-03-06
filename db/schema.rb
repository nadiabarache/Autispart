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

ActiveRecord::Schema.define(version: 20140306202932) do

  create_table "etats", force: true do |t|
    t.string   "humor"
    t.text     "event"
    t.integer  "infoperso_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "etats", ["infoperso_id"], name: "index_etats_on_infoperso_id"

  create_table "infopersos", force: true do |t|
    t.string   "pseudo"
    t.integer  "age"
    t.string   "sexe"
    t.string   "ville"
    t.integer  "departement"
    t.string   "pays"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "infos", force: true do |t|
    t.integer  "age_diagnostic"
    t.string   "pays_diagnostic"
    t.string   "autism_type"
    t.string   "trouble_psycho"
    t.string   "other_trouble"
    t.integer  "infoperso_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "infos", ["infoperso_id"], name: "index_infos_on_infoperso_id"

  create_table "users", force: true do |t|
    t.string   "pseudo"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
