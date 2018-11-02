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

ActiveRecord::Schema.define(version: 2018_11_02_092922) do

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

  create_table "evidences", force: :cascade do |t|
    t.string "title"
    t.string "description"
  end

  create_table "friendly_id_slugs", id: :serial, force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "implementations", force: :cascade do |t|
    t.text "intro"
    t.string "deliverer"
    t.string "training_requirements"
    t.string "fidelity"
    t.string "support"
    t.text "how_is_it_delivered"
  end

  create_table "interventions", force: :cascade do |t|
    t.string "title"
    t.text "intro"
    t.text "how"
    t.text "studies"
    t.text "costs_benefits"
    t.bigint "implementation_id"
    t.text "summary"
    t.text "what_is_it"
    t.text "who_does_it_work_for"
    t.text "work_for_intro"
    t.text "when_where_how"
    t.text "outcome_notes"
    t.index ["implementation_id"], name: "index_interventions_on_implementation_id"
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
    t.text "evidence_notes"
    t.text "intervention_notes"
    t.index ["intervention_id"], name: "index_outcomes_on_intervention_id"
  end

  create_table "pages", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
