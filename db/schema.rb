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

ActiveRecord::Schema.define(:version => 20120722164410) do

  create_table "course_enrollments", :force => true do |t|
    t.integer  "course_id"
    t.integer  "student_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.integer  "lecturer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "exercise_submissions", :force => true do |t|
    t.integer  "lecturer_grade"
    t.text     "lecturer_comment"
    t.text     "student_comment"
    t.integer  "auto_grade"
    t.integer  "final_grade"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.integer  "student_id"
    t.integer  "exercise_id"
    t.string   "exercise_submission_path"
    t.datetime "exercise_submission_datetime"
  end

  create_table "exercises", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "exercise_path"
    t.string   "script_path"
    t.datetime "due_date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "course_id"
  end

  create_table "users", :force => true do |t|
    t.string   "user_name"
    t.string   "email"
    t.string   "type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "remember_token"
  end

end
