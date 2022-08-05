# frozen_string_literal: true

Sequel.migration do
  transaction

  up do
    create_table(:users) do
      Serial      :id, primary_key: true
      String      :phone, unique: true, null: false
      String      :password, null: false

      DateTime :created_at, default: Sequel.function(:NOW)
      DateTime :updated_at, default: Sequel.function(:NOW)
    end
  end
end
