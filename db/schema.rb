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

ActiveRecord::Schema.define(version: 20170321162529) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "product_categories", force: :cascade do |t|
    t.string   "name"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_properties", force: :cascade do |t|
    t.string   "name"
    t.string   "question"
    t.integer  "product_category_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["product_category_id"], name: "index_product_properties_on_product_category_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.integer  "product_category_id"
    t.string   "format"
    t.string   "paper_type"
    t.integer  "quantity"
    t.string   "print_mode"
    t.string   "print_finish"
    t.integer  "number_of_people"
    t.boolean  "install_service"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["product_category_id"], name: "index_products_on_product_category_id", using: :btree
  end

  create_table "property_values", force: :cascade do |t|
    t.string   "value"
    t.string   "image_url"
    t.string   "notes"
    t.integer  "product_property_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["product_property_id"], name: "index_property_values_on_product_property_id", using: :btree
  end

  create_table "shop_products", force: :cascade do |t|
    t.integer  "shop_id"
    t.integer  "product_id"
    t.integer  "price"
    t.boolean  "avalaible"
    t.integer  "delivery_days"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["product_id"], name: "index_shop_products_on_product_id", using: :btree
    t.index ["shop_id"], name: "index_shop_products_on_shop_id", using: :btree
  end

  create_table "shops", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "telephone"
    t.string   "nif"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "product_properties", "product_categories"
  add_foreign_key "products", "product_categories"
  add_foreign_key "property_values", "product_properties"
  add_foreign_key "shop_products", "products"
  add_foreign_key "shop_products", "shops"
end