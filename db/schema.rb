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

ActiveRecord::Schema.define(version: 20170320170813) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "product_categories", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "shops", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "telephone"
    t.string   "nif"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "store_products", force: :cascade do |t|
    t.integer  "shop_id"
    t.integer  "product_id"
    t.integer  "price"
    t.boolean  "avalaible"
    t.integer  "delivery_days"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["product_id"], name: "index_store_products_on_product_id", using: :btree
    t.index ["shop_id"], name: "index_store_products_on_shop_id", using: :btree
  end

  add_foreign_key "products", "product_categories"
  add_foreign_key "store_products", "products"
  add_foreign_key "store_products", "shops"
end
