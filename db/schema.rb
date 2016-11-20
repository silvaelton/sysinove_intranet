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

ActiveRecord::Schema.define(version: 20161120194633) do

  create_table "accounts", force: :cascade do |t|
    t.integer  "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_accounts_on_code", unique: true
  end

  create_table "internal_contacts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "internal_events", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "internal_general_messages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "internal_sectors", force: :cascade do |t|
    t.integer  "account_id"
    t.string   "name"
    t.text     "observation"
    t.boolean  "publish",     default: true
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["account_id"], name: "index_internal_sectors_on_account_id"
  end

  create_table "internal_staff_messages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "internal_staffs", force: :cascade do |t|
    t.integer  "account_id"
    t.string   "name"
    t.string   "cpf"
    t.string   "rg"
    t.string   "rg_org"
    t.string   "city"
    t.string   "cep"
    t.integer  "state_id"
    t.string   "address"
    t.string   "complement"
    t.string   "telephone"
    t.string   "telephone_optional"
    t.string   "celphone"
    t.string   "email"
    t.text     "observation"
    t.string   "code"
    t.string   "username"
    t.string   "password"
    t.boolean  "user_active",        default: false
    t.boolean  "situation",          default: true
    t.string   "job"
    t.integer  "sector_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["account_id"], name: "index_internal_staffs_on_account_id"
  end

  create_table "internal_tasks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
