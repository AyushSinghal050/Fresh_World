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

ActiveRecord::Schema.define(version: 20170724182206) do

  create_table "cartitems", force: :cascade do |t|
    t.string   "item"
    t.string   "string"
    t.string   "amount"
    t.string   "integer"
    t.string   "quantity"
    t.integer  "user_id"
    t.integer  "fruit_id"
    t.integer  "vegetable_id"
    t.integer  "cart_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "cartitems", ["cart_id"], name: "index_cartitems_on_cart_id"
  add_index "cartitems", ["fruit_id"], name: "index_cartitems_on_fruit_id"
  add_index "cartitems", ["user_id"], name: "index_cartitems_on_user_id"
  add_index "cartitems", ["vegetable_id"], name: "index_cartitems_on_vegetable_id"

  create_table "carts", force: :cascade do |t|
    t.string   "item"
    t.integer  "amount"
    t.integer  "quantity"
    t.integer  "user_id"
    t.integer  "vegetable_id"
    t.integer  "fruit_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "carts", ["fruit_id"], name: "index_carts_on_fruit_id"
  add_index "carts", ["user_id"], name: "index_carts_on_user_id"
  add_index "carts", ["vegetable_id"], name: "index_carts_on_vegetable_id"

  create_table "cartsitems", force: :cascade do |t|
    t.string   "item"
    t.integer  "amount"
    t.integer  "quantity"
    t.integer  "user_id"
    t.integer  "fruit_id"
    t.integer  "vegetable_id"
    t.integer  "cart_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "cartsitems", ["cart_id"], name: "index_cartsitems_on_cart_id"
  add_index "cartsitems", ["fruit_id"], name: "index_cartsitems_on_fruit_id"
  add_index "cartsitems", ["user_id"], name: "index_cartsitems_on_user_id"
  add_index "cartsitems", ["vegetable_id"], name: "index_cartsitems_on_vegetable_id"

  create_table "combos", force: :cascade do |t|
    t.integer  "fruit_id"
    t.integer  "vegetable_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "combos", ["fruit_id"], name: "index_combos_on_fruit_id"
  add_index "combos", ["vegetable_id"], name: "index_combos_on_vegetable_id"

  create_table "fruits", force: :cascade do |t|
    t.string   "name"
    t.integer  "rate"
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "weight"
    t.string   "weightin"
  end

  create_table "homes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offers", force: :cascade do |t|
    t.integer  "fruit_id"
    t.integer  "vegetable_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "offers", ["fruit_id"], name: "index_offers_on_fruit_id"
  add_index "offers", ["vegetable_id"], name: "index_offers_on_vegetable_id"

  create_table "orders", force: :cascade do |t|
    t.boolean  "Status"
    t.string   "Buyername"
    t.integer  "Buyernumber"
    t.string   "Buyeraddress"
    t.integer  "cart_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "orders", ["cart_id"], name: "index_orders_on_cart_id"
  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

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
    t.integer  "cartnumber"
    t.integer  "ordernumber"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vegetables", force: :cascade do |t|
    t.string   "name"
    t.integer  "rate"
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "weight"
    t.string   "weightin"
  end

end
