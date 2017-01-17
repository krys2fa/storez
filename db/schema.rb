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

ActiveRecord::Schema.define(version: 20170117125436) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agents", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.text     "email"
    t.text     "password"
    t.text     "telephone"
    t.boolean  "isadmin"
    t.integer  "branch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["branch_id"], name: "index_agents_on_branch_id", using: :btree
  end

  create_table "branches", force: :cascade do |t|
    t.string   "name"
    t.text     "location"
    t.text     "address"
    t.string   "email"
    t.string   "telephone"
    t.integer  "store_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["store_id"], name: "index_branches_on_store_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "quantity"
    t.text     "code"
    t.integer  "price"
    t.integer  "branch_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["branch_id"], name: "index_products_on_branch_id", using: :btree
  end

  create_table "sales", force: :cascade do |t|
    t.datetime "purchasedate"
    t.integer  "quantity"
    t.integer  "branch_id"
    t.integer  "product_id"
    t.integer  "agent_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["agent_id"], name: "index_sales_on_agent_id", using: :btree
    t.index ["branch_id"], name: "index_sales_on_branch_id", using: :btree
    t.index ["product_id"], name: "index_sales_on_product_id", using: :btree
  end

  create_table "stores", force: :cascade do |t|
    t.text     "name"
    t.string   "manager"
    t.string   "telephone"
    t.text     "hq_location"
    t.text     "hq_address"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "api_key"
  end

  add_foreign_key "agents", "branches"
  add_foreign_key "branches", "stores"
  add_foreign_key "products", "branches"
  add_foreign_key "sales", "agents"
  add_foreign_key "sales", "branches"
  add_foreign_key "sales", "products"
end
