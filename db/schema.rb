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

ActiveRecord::Schema.define(version: 20150602152524) do

  create_table "lesson_applies", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "lesson_applies", ["lesson_id"], name: "index_lesson_applies_on_lesson_id"
  add_index "lesson_applies", ["student_id"], name: "index_lesson_applies_on_student_id"

  create_table "lessons", force: :cascade do |t|
    t.string   "title"
    t.integer  "number"
    t.text     "description"
    t.decimal  "value"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "lessons_students", force: :cascade do |t|
    t.integer "students_id"
    t.integer "lessons_id"
  end

  add_index "lessons_students", ["lessons_id"], name: "index_lessons_students_on_lessons_id"
  add_index "lessons_students", ["students_id"], name: "index_lessons_students_on_students_id"

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "nickname"
    t.integer  "age"
    t.string   "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
