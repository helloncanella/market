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

ActiveRecord::Schema.define(version: 20150329233928) do

  create_table "baskets", force: true do |t|
    t.decimal  "amount_price"
    t.integer  "amount"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "baskets_products", force: true do |t|
    t.integer "basket_id"
    t.integer "product_id"
  end

  add_index "baskets_products", ["basket_id"], name: "index_baskets_products_on_basket_id"
  add_index "baskets_products", ["product_id"], name: "index_baskets_products_on_product_id"

  create_table "products", force: true do |t|
    t.text    "name"
    t.text    "description"
    t.decimal "preco"
    t.string  "image"
  end

  create_table "users", force: true do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "city"
    t.string "country"
  end

end
