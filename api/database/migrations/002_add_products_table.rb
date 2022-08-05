# frozen_string_literal: true

Sequel.migration do
  transaction

  up do
    create_table(:products) do
      Serial      :id, primary_key: true
      String      :name, size: 30, null: false
      Float       :price, null: false
      String      :description, null: false
      Integer     :user_id, foreign_key: true, null: false

      DateTime    :created_at, default: Sequel.function(:NOW)
      DateTime    :updated_at, default: Sequel.function(:NOW)
    end
  end
end
