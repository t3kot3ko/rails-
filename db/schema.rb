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

ActiveRecord::Schema.define(version: 20161206145112) do

  create_table "executions", force: :cascade do |t|
    t.integer  "executor_id"
    t.datetime "executed_at"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["executor_id"], name: "index_executions_on_executor_id"
  end

  create_table "executors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string   "name"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_sections_on_project_id"
  end

  create_table "test_result_types", force: :cascade do |t|
    t.string   "title"
    t.string   "color"
    t.string   "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test_results", force: :cascade do |t|
    t.integer  "test_result_type_id"
    t.integer  "execution_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["execution_id"], name: "index_test_results_on_execution_id"
    t.index ["test_result_type_id"], name: "index_test_results_on_test_result_type_id"
  end

  create_table "testcases", force: :cascade do |t|
    t.string   "title"
    t.text     "step"
    t.text     "precondition"
    t.text     "postcondition"
    t.text     "expected_result"
    t.string   "identifier"
    t.text     "description"
    t.integer  "section_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["section_id"], name: "index_testcases_on_section_id"
  end

end
