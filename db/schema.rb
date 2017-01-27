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

ActiveRecord::Schema.define(version: 20170127160702) do

  create_table "accounts", force: :cascade do |t|
    t.integer  "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_accounts_on_code", unique: true
  end

  create_table "commercial_item_categories", force: :cascade do |t|
    t.integer  "account_id"
    t.string   "name"
    t.boolean  "status",     default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["account_id"], name: "index_commercial_item_categories_on_account_id"
  end

  create_table "commercial_items", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "item_category_id"
    t.string   "name"
    t.text     "description"
    t.string   "photo"
    t.float    "value_buy",        default: 0.0
    t.float    "value_sell",       default: 0.0
    t.float    "max_discount",     default: 0.0
    t.integer  "unit",             default: 0
    t.integer  "quantity",         default: 0
    t.text     "observation"
    t.boolean  "status",           default: true
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.index ["account_id"], name: "index_commercial_items_on_account_id"
    t.index ["item_category_id"], name: "index_commercial_items_on_item_category_id"
  end

  create_table "commercial_newsletter_sends", force: :cascade do |t|
    t.integer  "account_id"
    t.text     "emails"
    t.integer  "situation",     default: 0
    t.integer  "newsletter_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["account_id"], name: "index_commercial_newsletter_sends_on_account_id"
    t.index ["newsletter_id"], name: "index_commercial_newsletter_sends_on_newsletter_id"
  end

  create_table "commercial_newsletters", force: :cascade do |t|
    t.integer  "account_id"
    t.string   "title"
    t.text     "content"
    t.boolean  "status",     default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["account_id"], name: "index_commercial_newsletters_on_account_id"
  end

  create_table "commercial_supplier_categories", force: :cascade do |t|
    t.integer  "account_id"
    t.string   "name"
    t.boolean  "status",     default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["account_id"], name: "index_commercial_supplier_categories_on_account_id"
  end

  create_table "commercial_supplier_contacts", force: :cascade do |t|
    t.integer  "supplier_id"
    t.string   "name"
    t.string   "telephone"
    t.string   "telephone_secundary"
    t.string   "email"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["supplier_id"], name: "index_commercial_supplier_contacts_on_supplier_id"
  end

  create_table "commercial_suppliers", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "supplier_category_id"
    t.integer  "supplier_type",        default: 0
    t.string   "social_reason"
    t.string   "personal_name"
    t.string   "cpf_cnpj"
    t.integer  "state_id"
    t.string   "city"
    t.string   "address"
    t.string   "cep"
    t.string   "complement_address"
    t.text     "observation"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.index ["account_id"], name: "index_commercial_suppliers_on_account_id"
    t.index ["state_id"], name: "index_commercial_suppliers_on_state_id"
    t.index ["supplier_category_id"], name: "index_commercial_suppliers_on_supplier_category_id"
  end

  create_table "customer_client_alerts", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "client_id"
    t.text     "content"
    t.integer  "priority",   default: 0
    t.boolean  "publish",    default: false
    t.date     "expires_at"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["account_id"], name: "index_customer_client_alerts_on_account_id"
    t.index ["client_id"], name: "index_customer_client_alerts_on_client_id"
  end

  create_table "customer_client_archives", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "client_id"
    t.string   "name"
    t.text     "description"
    t.string   "file_path"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["account_id"], name: "index_customer_client_archives_on_account_id"
    t.index ["client_id"], name: "index_customer_client_archives_on_client_id"
  end

  create_table "customer_client_categories", force: :cascade do |t|
    t.integer  "account_id"
    t.string   "name"
    t.boolean  "status",     default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["account_id"], name: "index_customer_client_categories_on_account_id"
  end

  create_table "customer_client_contacts", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "client_id"
    t.string   "name"
    t.string   "telephone"
    t.string   "telephone_secundary"
    t.string   "email"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["account_id"], name: "index_customer_client_contacts_on_account_id"
    t.index ["client_id"], name: "index_customer_client_contacts_on_client_id"
  end

  create_table "customer_client_documents", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "client_id"
    t.integer  "client_document_type", default: 0
    t.text     "description"
    t.string   "title"
    t.string   "file_path"
    t.boolean  "read",                 default: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["account_id"], name: "index_customer_client_documents_on_account_id"
    t.index ["client_id"], name: "index_customer_client_documents_on_client_id"
  end

  create_table "customer_client_messages", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "client_id"
    t.text     "content"
    t.boolean  "read",                default: false
    t.integer  "client_message_type", default: 0
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["account_id"], name: "index_customer_client_messages_on_account_id"
    t.index ["client_id"], name: "index_customer_client_messages_on_client_id"
  end

  create_table "customer_client_requests", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "client_id"
    t.text     "content"
    t.string   "file_path"
    t.integer  "client_request_type", default: 0
    t.boolean  "read",                default: false
    t.boolean  "complete",            default: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "customer_clients", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "client_category_id"
    t.integer  "client_type",        default: 0
    t.string   "personal_name"
    t.string   "fantasy_name"
    t.string   "company_name"
    t.string   "cpf_cnpj"
    t.string   "state_number"
    t.string   "city_number"
    t.string   "address"
    t.integer  "state_id"
    t.string   "city"
    t.string   "complement_address"
    t.text     "observation"
    t.string   "cep"
    t.boolean  "external",           default: false
    t.string   "email"
    t.string   "password"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["account_id"], name: "index_customer_clients_on_account_id"
    t.index ["client_category_id"], name: "index_customer_clients_on_client_category_id"
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
    t.integer  "account_id"
    t.integer  "staff_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_internal_general_messages_on_account_id"
    t.index ["staff_id"], name: "index_internal_general_messages_on_staff_id"
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
    t.decimal  "salary"
    t.decimal  "transport_value"
    t.decimal  "food_value"
    t.integer  "sector_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["account_id"], name: "index_internal_staffs_on_account_id"
  end

  create_table "internal_tasks", force: :cascade do |t|
    t.integer  "account_id"
    t.string   "title"
    t.text     "description"
    t.integer  "priority"
    t.integer  "situation"
    t.integer  "responsible_id"
    t.date     "due"
    t.integer  "progress"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["account_id"], name: "index_internal_tasks_on_account_id"
  end

  create_table "site_core_categories", force: :cascade do |t|
    t.integer  "account_id"
    t.string   "name"
    t.boolean  "status",     default: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["account_id"], name: "index_site_core_categories_on_account_id"
  end

  create_table "site_core_navs", force: :cascade do |t|
    t.integer  "account_id"
    t.string   "name"
    t.integer  "page_id"
    t.integer  "post_id"
    t.string   "url"
    t.integer  "nav_type",   default: 0
    t.integer  "target",     default: 0
    t.integer  "order",      default: 0
    t.boolean  "publish",    default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["account_id"], name: "index_site_core_navs_on_account_id"
    t.index ["page_id"], name: "index_site_core_navs_on_page_id"
    t.index ["post_id"], name: "index_site_core_navs_on_post_id"
  end

  create_table "site_core_pages", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "category_id"
    t.string   "name"
    t.text     "content"
    t.boolean  "publish",     default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["account_id"], name: "index_site_core_pages_on_account_id"
    t.index ["category_id"], name: "index_site_core_pages_on_category_id"
  end

  create_table "site_core_posts", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "category_id"
    t.string   "name"
    t.text     "content"
    t.boolean  "publish",      default: false
    t.boolean  "slider",       default: false
    t.string   "slider_image"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["account_id"], name: "index_site_core_posts_on_account_id"
    t.index ["category_id"], name: "index_site_core_posts_on_category_id"
  end

end
