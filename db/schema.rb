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

ActiveRecord::Schema.define(version: 20170306210523) do

  create_table "homes", force: :cascade do |t|
    t.string   "title",                limit: 255
    t.text     "intro",                limit: 65535
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "scientists_img_url",   limit: 255
    t.string   "publications_img_url", limit: 255
    t.string   "datatools_img_url",    limit: 255
    t.string   "impact_img_url",       limit: 255
  end

  create_table "publication_types", primary_key: "publication_type_id", force: :cascade do |t|
    t.string   "name",              limit: 64
    t.string   "label",             limit: 64
    t.string   "short_description", limit: 1024
    t.string   "long_description",  limit: 2048
    t.string   "created_by",        limit: 256,  default: "System", null: false
    t.string   "updated_by",        limit: 256
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

  create_table "scientists", id: false, force: :cascade do |t|
    t.integer  "scientistId",   limit: 4
    t.string   "firstName",     limit: 255,   null: false
    t.string   "lastName",      limit: 255,   null: false
    t.string   "title",         limit: 255,   null: false
    t.string   "email",         limit: 255
    t.string   "photoUrl",      limit: 255
    t.string   "orcid",         limit: 255
    t.string   "researchGate",  limit: 255
    t.string   "googleScholar", limit: 255
    t.string   "linkedIn",      limit: 255
    t.string   "plumx",         limit: 255
    t.string   "publons",       limit: 255
    t.string   "vivo",          limit: 255
    t.text     "bio",           limit: 65535
    t.string   "createdBy",     limit: 255
    t.string   "updatedBy",     limit: 255
    t.string   "publications",  limit: 255
    t.string   "presentations", limit: 255
    t.string   "projects",      limit: 255
    t.string   "selfUrl",       limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "other_details", limit: 255
  end

end
