# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110331115520) do

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.string   "location"
    t.datetime "date_of_event"
    t.string   "emphasis"
    t.string   "author"
    t.text     "information"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "boards", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "othernames"
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.string   "location"
    t.datetime "date_of_event"
    t.string   "emphasis"
    t.string   "author"
    t.text     "information"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "galleries", :force => true do |t|
    t.string   "title"
    t.string   "location"
    t.datetime "date_of_event"
    t.string   "photographer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "presses", :force => true do |t|
    t.string   "title"
    t.string   "location"
    t.datetime "date_of_event"
    t.string   "emphasis"
    t.string   "author"
    t.text     "information"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "sponsors", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "othernames"
    t.string   "title"
    t.string   "email"
    t.string   "phone"
    t.text     "address"
    t.string   "projectname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", :force => true do |t|
    t.string   "title"
    t.string   "location"
    t.datetime "date_of_event"
    t.string   "emphasis"
    t.string   "cameraman"
    t.text     "information"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "embed"
    t.string   "identity"
  end

  create_table "visitors", :force => true do |t|
    t.string   "name"
    t.string   "direction"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
