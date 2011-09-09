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

ActiveRecord::Schema.define(:version => 20110909142743) do

  create_table "attachments", :force => true do |t|
    t.integer  "owner_id"
    t.string   "owner_type"
    t.string   "a_type"
    t.string   "data_file_name"
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.datetime "data_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "list_itmes", :force => true do |t|
    t.string   "value_en"
    t.string   "value_zh"
    t.string   "list_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "login"
    t.string   "address"
    t.string   "phone"
    t.string   "yoga_style"
    t.string   "difficult_level"
    t.string   "preference"
    t.text     "about_me"
    t.string   "primary_location"
    t.string   "travelling_location"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["confirmation_token"], :name => "index_students_on_confirmation_token", :unique => true
  add_index "students", ["email"], :name => "index_students_on_email", :unique => true
  add_index "students", ["reset_password_token"], :name => "index_students_on_reset_password_token", :unique => true

  create_table "teachers", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "login"
    t.string   "address"
    t.string   "phone"
    t.string   "yoga_style"
    t.string   "weblink"
    t.text     "short_bio"
    t.text     "philosophy"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nationality"
    t.string   "organizations"
    t.string   "organization_other"
    t.string   "availability"
    t.string   "travel_expenses"
    t.boolean  "organizate_alliance"
    t.boolean  "organizate_wheel"
    t.boolean  "organizate_kundalini"
    t.boolean  "organizate_other"
  end

  add_index "teachers", ["confirmation_token"], :name => "index_teachers_on_confirmation_token", :unique => true
  add_index "teachers", ["email"], :name => "index_teachers_on_email", :unique => true
  add_index "teachers", ["reset_password_token"], :name => "index_teachers_on_reset_password_token", :unique => true

end
