# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :slugmaps do
      primary_key :id
      column :corpname, String, null: false
      column :reposlug, String, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
