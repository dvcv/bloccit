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

ActiveRecord::Schema.define(version: 20171022004458) do

  create_table "advertisements", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id"
    t.text     "body"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id"

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id"

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "topic_id"
  end

  add_index "posts", ["topic_id"], name: "index_posts_on_topic_id"

  create_table "questions", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.boolean  "resolved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sponsored_posts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "price"
    t.integer  "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sponsored_posts", ["topic_id"], name: "index_sponsored_posts_on_topic_id"

  create_table "topics", force: :cascade do |t|
    t.string   "name"
    t.boolean  "public",      default: true
    t.text     "description"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
