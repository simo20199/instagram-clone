# frozen_string_literal: true

class AddUsernameToAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :first_name, :string, limits: 20
    add_column :accounts, :last_name, :string, limits: 20
    add_column :accounts, :usename, :string, limits: 20
  end
end
