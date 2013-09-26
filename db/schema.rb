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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130926023923) do

  create_table "discounts", :force => true do |t|
    t.string   "category"
    t.integer  "group_id"
    t.integer  "percent"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "discounts_items", :id => false, :force => true do |t|
    t.integer "discount_id"
    t.integer "item_id"
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.string   "category"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "groups_members", :id => false, :force => true do |t|
    t.integer "group_id",  :null => false
    t.integer "member_id", :null => false
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.string   "brand"
    t.integer  "list_price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "members", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "last_name"
    t.string   "first_name"
    t.date     "birthday"
    t.string   "gender"
  end

  add_index "members", ["email"], :name => "index_members_on_email"
  add_index "members", ["reset_password_token"], :name => "index_members_on_reset_password_token"

  create_table "purchase_items", :force => true do |t|
    t.integer  "purchase_price"
    t.integer  "member_id"
    t.integer  "discount_id"
    t.integer  "item_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
