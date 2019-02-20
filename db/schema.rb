ActiveRecord::Schema.define(version: 20190220071340) do

  enable_extension "plpgsql"

  create_table "monologues", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
