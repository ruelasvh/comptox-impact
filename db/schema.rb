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

ActiveRecord::Schema.define(version: 20170622184622) do

  create_table "ftp_metrics", force: :cascade do |t|
    t.integer  "parent_id",    limit: 4,   null: false
    t.string   "app",          limit: 255, null: false
    t.string   "name",         limit: 255, null: false
    t.boolean  "folder",       limit: 1,   null: false
    t.integer  "count",        limit: 4,   null: false
    t.integer  "unique_count", limit: 4,   null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

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

  create_table "publications", primary_key: "publication_id", force: :cascade do |t|
    t.string   "title",               limit: 2048
    t.string   "doi",                 limit: 128
    t.date     "published_date"
    t.text     "citation",            limit: 65535
    t.text     "abstract",            limit: 65535
    t.integer  "publication_type_id", limit: 4
    t.string   "publication_url",     limit: 2048
    t.string   "external_url",        limit: 2048
    t.string   "created_by",          limit: 256,   default: "System", null: false
    t.string   "updated_by",          limit: 256
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.string   "project",             limit: 255
  end

  add_index "publications", ["publication_type_id"], name: "fk_PubPubTypes", using: :btree

  create_table "scientist_publications", primary_key: "scientist_publication_id", force: :cascade do |t|
    t.integer  "scientist_id",      limit: 4
    t.integer  "publication_id",    limit: 4
    t.boolean  "is_primary_author", limit: 1
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "scientist_publications", ["publication_id"], name: "fk_rails_4bee69e443", using: :btree
  add_index "scientist_publications", ["scientist_id", "publication_id"], name: "index_scientist_publications_on_scientist_id_and_publication_id", unique: true, using: :btree

  create_table "scientists", primary_key: "scientistId", force: :cascade do |t|
    t.string   "firstName",         limit: 255,   null: false
    t.string   "lastName",          limit: 255,   null: false
    t.string   "title",             limit: 255
    t.string   "email",             limit: 255
    t.string   "photoUrl",          limit: 255
    t.string   "orcid",             limit: 255
    t.string   "researchGate",      limit: 255
    t.string   "googleScholar",     limit: 255
    t.string   "linkedIn",          limit: 255
    t.string   "plumx",             limit: 255
    t.string   "publons",           limit: 255
    t.string   "vivo",              limit: 255
    t.string   "microsoftAcademic", limit: 255
    t.string   "otherDetails",      limit: 255
    t.text     "bio",               limit: 65535
    t.string   "createdBy",         limit: 255
    t.string   "updatedBy",         limit: 255
    t.string   "publications",      limit: 255
    t.string   "presentations",     limit: 255
    t.string   "projects",          limit: 255
    t.string   "selfUrl",           limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_foreign_key "publications", "publication_types", primary_key: "publication_type_id", name: "fk_PubPubTypes", on_update: :cascade, on_delete: :nullify
  add_foreign_key "scientist_publications", "publications", primary_key: "publication_id", on_update: :cascade, on_delete: :nullify
  add_foreign_key "scientist_publications", "scientists", primary_key: "scientistId", on_update: :cascade, on_delete: :nullify
end
