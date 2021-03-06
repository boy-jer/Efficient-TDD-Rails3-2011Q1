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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110405003842) do

  create_table "orders", :force => true do |t|
    t.integer  "shipping_address_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["created_at"], :name => "index_orders_on_created_at"
  add_index "orders", ["shipping_address_id"], :name => "index_orders_on_shipping_address_id"

  create_table "shipping_addresses", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.string   "street"
    t.string   "city"
    t.string   "zip"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shipping_addresses", ["user_id"], :name => "index_shipping_addresses_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "middle_name"
    t.string   "email"
    t.boolean  "admin"
    t.string   "provider"
    t.string   "uid"
    t.string   "username"
    t.string   "avatar"
  end

  add_index "users", ["provider", "uid"], :name => "index_users_on_provider_and_uid"

end
