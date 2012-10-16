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

ActiveRecord::Schema.define(:version => 0) do

  create_table "clients", :force => true do |t|
    t.string "name", :limit => 35, :default => "", :null => false
  end

  create_table "jobs", :force => true do |t|
    t.string  "name",          :limit => 100, :default => "",        :null => false
    t.string  "date",          :limit => 50,  :default => "",        :null => false
    t.integer "client_id",                    :default => 0,         :null => false
    t.text    "notes"
    t.string  "folder",        :limit => 100, :default => "folder/", :null => false
    t.integer "invoiced",                     :default => 0
    t.string  "invoiceNumber", :limit => 15
    t.string  "tifHD",         :limit => 15,  :default => "",        :null => false
    t.string  "rawHD",         :limit => 15,  :default => "",        :null => false
    t.string  "extras",        :limit => 250
    t.boolean "oldJob",                       :default => false,     :null => false
    t.boolean "public",                       :default => false,     :null => false
    t.date    "created_at"
    t.date    "updated_at"
  end

  create_table "settings", :id => false, :force => true do |t|
    t.string "currentTifHD", :limit => 8,  :default => "",                                     :null => false
    t.string "currentRawHD", :limit => 8,  :default => "",                                     :null => false
    t.string "webAddress",   :limit => 75, :default => "http://192.168.1.108/studioDb/jpegs/", :null => false
  end

  create_table "shots", :id => false, :force => true do |t|
    t.integer "id",                                                :null => false
    t.integer "job_id",                    :default => 0,          :null => false
    t.string  "date",       :limit => 50,  :default => "",         :null => false
    t.string  "name",       :limit => 250, :default => "",         :null => false
    t.string  "lens",       :limit => 20
    t.string  "image",      :limit => 100, :default => "fileName"
    t.text    "notes"
    t.boolean "printed",                   :default => false,      :null => false
    t.date    "created_at"
    t.date    "updated_at"
  end

  create_table "users_usr", :primary_key => "id_usr", :force => true do |t|
    t.string  "username_usr", :limit => 50, :default => "",    :null => false
    t.string  "password_usr", :limit => 50, :default => "",    :null => false
    t.string  "email_usr",    :limit => 50, :default => "",    :null => false
    t.boolean "active_usr",                 :default => false, :null => false
    t.boolean "level_usr",                  :default => false, :null => false
  end

end
