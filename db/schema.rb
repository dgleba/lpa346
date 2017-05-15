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

ActiveRecord::Schema.define(version: 50161230223306) do

  create_table "answers", force: :cascade do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "question_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.text     "issue_description"
    t.text     "action_taken"
    t.integer  "survey_id"
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["survey_id"], name: "index_answers_on_survey_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "country_of_origins", force: :cascade do |t|
    t.string   "name"
    t.datetime "fdate"
    t.integer  "active_status"
    t.integer  "sort"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "part_numbers", force: :cascade do |t|
    t.string   "name"
    t.integer  "sort"
    t.integer  "active_status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "pfeatures", force: :cascade do |t|
    t.string   "name"
    t.datetime "fdate"
    t.integer  "active_status"
    t.integer  "sort"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "process_steps", force: :cascade do |t|
    t.string   "name"
    t.integer  "sort"
    t.integer  "active_status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "product_features", force: :cascade do |t|
    t.string   "name"
    t.integer  "product_id"
    t.integer  "pfeature_id"
    t.integer  "active_status"
    t.integer  "sort"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["pfeature_id"], name: "index_product_features_on_pfeature_id"
    t.index ["product_id"], name: "index_product_features_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "country_of_origin_id"
    t.datetime "pdate"
    t.integer  "active_status"
    t.integer  "sort"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["country_of_origin_id"], name: "index_products_on_country_of_origin_id"
  end

  create_table "question_lists", force: :cascade do |t|
    t.string   "name"
    t.text     "partnumberguide"
    t.integer  "sort"
    t.integer  "active_status"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "title_notused"
    t.integer  "survey_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "qtype",                default: 0
    t.text     "question_note"
    t.text     "question_whatlookfor"
    t.text     "question_if_no"
    t.integer  "question_list_id"
    t.integer  "active_status",        default: 0
    t.integer  "sort",                 default: 0
    t.index ["question_list_id"], name: "index_questions_on_question_list_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "active_status"
    t.integer  "sort"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "surveys", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "user_id"
    t.integer  "active_status", default: 0
    t.integer  "sort",          default: 0
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "role_id",                default: 7
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

end
