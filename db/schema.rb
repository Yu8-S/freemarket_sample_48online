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

ActiveRecord::Schema.define(version: 2019_05_14_113002) do

  create_table "accounts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "bank", null: false
    t.string "account_type", null: false
    t.integer "cranch_code", null: false
    t.integer "account_number", null: false
    t.string "account_holder_firstname", null: false
    t.string "account_holder_lastname", null: false
    t.string "address", null: false
    t.string "name", null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "cardnumbers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "cardnumber", null: false
    t.integer "expirationdate_month", null: false
    t.integer "expirationdate_year", null: false
    t.integer "securitycode", null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_cardnumbers_on_user_id"
  end

  create_table "evaluations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "evaluation", null: false
    t.string "comment"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_evaluations_on_user_id"
  end

  create_table "images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "product_id"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_images_on_product_id"
  end

  create_table "locals", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "postalcode", null: false
    t.string "prefectures", null: false
    t.string "city", null: false
    t.string "address", null: false
    t.string "buildingname"
    t.integer "tell", null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_locals_on_user_id"
  end

  create_table "notices", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.text "contents"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notices_users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "notice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["notice_id"], name: "index_notices_users_on_notice_id"
    t.index ["user_id"], name: "index_notices_users_on_user_id"
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "price", null: false
    t.string "description", null: false
    t.string "size"
    t.string "brand"
    t.string "exhibitor", null: false
    t.string "state", null: false
    t.string "category", null: false
    t.integer "delivery_fee", null: false
    t.string "shipping_method", null: false
    t.string "estimated_shipping", null: false
    t.bigint "user_id"
    t.string "transaction_status", null: false
    t.string "buyer"
    t.integer "nice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["description"], name: "index_products_on_description"
    t.index ["name"], name: "index_products_on_name"
    t.index ["price"], name: "index_products_on_price"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "profiles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.string "introduction"
    t.text "image_url"
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "first_name_kana", null: false
    t.string "last_name_kana", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "birthday_year"
    t.integer "birthday_month"
    t.integer "birthday_day"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "nickname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "accounts", "users"
  add_foreign_key "cardnumbers", "users"
  add_foreign_key "evaluations", "users"
  add_foreign_key "images", "products"
  add_foreign_key "locals", "users"
  add_foreign_key "notices_users", "notices"
  add_foreign_key "notices_users", "users"
  add_foreign_key "products", "users"
  add_foreign_key "profiles", "users"
end
