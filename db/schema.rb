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

ActiveRecord::Schema.define(version: 2019_09_06_211237) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_comments_on_student_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "standard_id"
    t.integer "mastery"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["standard_id"], name: "index_lessons_on_standard_id"
    t.index ["student_id"], name: "index_lessons_on_student_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "topic"
    t.string "objective"
    t.string "direct"
    t.string "guided"
    t.string "independent"
    t.string "cfu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "standards", force: :cascade do |t|
    t.integer "masterylevel"
    t.string "description"
    t.string "notation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.boolean "mastered", default: false
    t.boolean "almost", default: false
    t.boolean "notyet", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name", default: "Jane Doe"
    t.string "img_url", default: "https://www.rightlobemath.com/images/easyblog_cavatar/2_teacher_avatar.jpeg"
    t.string "school", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "students"
  add_foreign_key "lessons", "standards"
  add_foreign_key "lessons", "students"
  add_foreign_key "students", "users"
end
