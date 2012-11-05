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

ActiveRecord::Schema.define(:version => 20121105115931) do

  create_table "candidates", :force => true do |t|
    t.string   "name"
    t.integer  "goals_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "candidates", ["goals_id"], :name => "index_candidates_on_goals_id"

  create_table "criteria", :force => true do |t|
    t.string   "name"
    t.float    "weight"
    t.integer  "goals_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "parent_id"
  end

  add_index "criteria", ["goals_id"], :name => "index_criteria_on_goals_id"

  create_table "goals", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "scores", :force => true do |t|
    t.integer  "Criterium_id"
    t.integer  "Candidate_id"
    t.float    "value"
    t.float    "weighted_value"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "scores", ["Candidate_id"], :name => "index_scores_on_Candidate_id"
  add_index "scores", ["Criterium_id"], :name => "index_scores_on_Criterium_id"

end
