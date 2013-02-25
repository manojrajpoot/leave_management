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

ActiveRecord::Schema.define(:version => 20130225164800) do

  create_table "employees", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.date     "date_of_joining"
    t.boolean  "admin_status"
  end

  add_index "employees", ["email"], :name => "index_employees_on_email", :unique => true
  add_index "employees", ["reset_password_token"], :name => "index_employees_on_reset_password_token", :unique => true

  create_table "leave_infos", :force => true do |t|
    t.integer  "employee_id"
    t.date     "start_date"
    t.date     "end_date"
    t.float    "status_of_day"
    t.text     "reason_of_leave"
    t.string   "to_email_ids"
    t.string   "cc_email_ids"
    t.boolean  "reference_status"
    t.string   "applicant_name"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "leave_status"
  end

  create_table "personal_infos", :force => true do |t|
    t.integer  "employee_id"
    t.string   "name"
    t.string   "father_name"
    t.string   "mother_name"
    t.datetime "date_of_birth"
    t.string   "permanent_address"
    t.string   "local_address"
    t.string   "email"
    t.string   "alternate_email"
    t.string   "phone"
    t.string   "home_phone"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "salaries", :force => true do |t|
    t.integer  "employee_id"
    t.datetime "applicable_month"
    t.float    "previous_month_salary"
    t.float    "applicable_salary"
    t.float    "deduction"
    t.text     "deduction_description"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

end
