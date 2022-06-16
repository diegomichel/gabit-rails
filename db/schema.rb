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

ActiveRecord::Schema[7.0].define(version: 2022_06_16_030256) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  # Custom types defined in this database.
  # Note that some types may not work with other database engines. Be careful if changing database.
  create_enum "task_type", ["todo", "daily", "habit"]

  create_table "tags", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_tags_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.integer "value"
    t.enum "type", default: "todo", null: false, enum_type: "task_type"
    t.integer "order", default: 0
    t.datetime "completed_at"
    t.integer "minutes_to_complete", default: 0
    t.integer "completed_count", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "tasks_tags", id: false, force: :cascade do |t|
    t.bigint "tasks_id"
    t.bigint "parts_id"
    t.index ["parts_id"], name: "index_tasks_tags_on_parts_id"
    t.index ["tasks_id"], name: "index_tasks_tags_on_tasks_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "hp", default: 100
    t.integer "credits", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "tags", "users"
  add_foreign_key "tasks", "users"
end
