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

ActiveRecord::Schema.define(version: 2018_10_30_165815) do

  create_table "chapters", force: :cascade do |t|
    t.string "title"
    t.integer "unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unit_id"], name: "index_chapters_on_unit_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.string "title"
    t.integer "chapter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapter_id"], name: "index_lessons_on_chapter_id"
  end

  create_table "question_type_skill_relations", force: :cascade do |t|
    t.integer "question_type_id"
    t.integer "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_type_id"], name: "index_question_type_skill_relations_on_question_type_id"
    t.index ["skill_id"], name: "index_question_type_skill_relations_on_skill_id"
  end

  create_table "question_types", force: :cascade do |t|
    t.string "title"
    t.integer "exp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "session_skill_relations", force: :cascade do |t|
    t.integer "session_id"
    t.integer "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_session_skill_relations_on_session_id"
    t.index ["skill_id"], name: "index_session_skill_relations_on_skill_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "title"
    t.integer "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_sessions_on_lesson_id"
  end

  create_table "skill_trees", force: :cascade do |t|
    t.bigint "parent_skill_id"
    t.bigint "child_skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "title"
    t.integer "base_exp"
    t.integer "master_exp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.string "title"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_units_on_course_id"
  end

  create_table "user_skill_relations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_user_skill_relations_on_skill_id"
    t.index ["user_id"], name: "index_user_skill_relations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
