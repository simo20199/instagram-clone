# frozen_string_literal: true

class UpdateAddUesrnameToAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :username, :string, limits: 20
  end
end
