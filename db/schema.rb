# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_06_01_162150) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string "body", null: false
    t.boolean "correct", default: false, null: false
    t.bigint "question_id_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id_id"], name: "index_answers_on_question_id_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "title", null: false
    t.bigint "test_id_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["test_id_id"], name: "index_categories_on_test_id_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "body", null: false
    t.bigint "test_id_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["test_id_id"], name: "index_questions_on_test_id_id"
  end

  create_table "tests", force: :cascade do |t|
    t.string "title", null: false
    t.integer "level", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.bigint "test_id_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["test_id_id"], name: "index_users_on_test_id_id"
  end

  add_foreign_key "answers", "questions", column: "question_id_id"
  add_foreign_key "categories", "tests", column: "test_id_id"
  add_foreign_key "questions", "tests", column: "test_id_id"
  add_foreign_key "users", "tests", column: "test_id_id"
end
