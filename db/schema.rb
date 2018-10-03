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

ActiveRecord::Schema.define(version: 2018_10_03_085933) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "contacts", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.bigint "intervention_id"
    t.index ["intervention_id"], name: "index_contacts_on_intervention_id"
  end

  create_table "implementations", force: :cascade do |t|
    t.text "intro"
    t.string "deliverer"
    t.string "training_requirements"
    t.string "supervision"
    t.string "fidelity"
    t.string "support"
  end

  create_table "interventions", force: :cascade do |t|
    t.string "title"
    t.text "intro"
    t.text "how"
    t.text "studies"
    t.string "more_effective", default: [], array: true
    t.string "works_best", default: [], array: true
    t.text "in_practice"
    t.text "costs_benefits"
    t.string "key_points", default: [], array: true
    t.bigint "implementation_id"
    t.index ["implementation_id"], name: "index_interventions_on_implementation_id"
  end

  create_table "interventions_subjects", force: :cascade do |t|
    t.bigint "intervention_id"
    t.bigint "subject_id"
    t.integer "classification_type"
    t.index ["intervention_id"], name: "index_interventions_subjects_on_intervention_id"
    t.index ["subject_id"], name: "index_interventions_subjects_on_subject_id"
  end

  create_table "interventions_tags", id: false, force: :cascade do |t|
    t.bigint "intervention_id", null: false
    t.bigint "tag_id", null: false
    t.index ["intervention_id", "tag_id"], name: "index_interventions_tags_on_intervention_id_and_tag_id"
    t.index ["tag_id", "intervention_id"], name: "index_interventions_tags_on_tag_id_and_intervention_id"
  end

  create_table "links", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.bigint "intervention_id"
    t.index ["intervention_id"], name: "index_links_on_intervention_id"
  end

  create_table "outcomes", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "effect"
    t.integer "evidence"
    t.bigint "intervention_id"
    t.index ["intervention_id"], name: "index_outcomes_on_intervention_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "title"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
