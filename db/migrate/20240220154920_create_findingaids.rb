# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :findingaids do
      primary_key :id
      column :filename, String, null: false
      column :content, String, text: true, default: ""
      column :size, Integer, default: 0
      column :ead2002, String, text: true, default: ""
      column :ead3, String, text: true, default: ""
      column :corpname, String
      column :reposlug, String
      column :eadid, String
      column :state, String
      column :error, String

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
