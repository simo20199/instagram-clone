# frozen_string_literal: true

class RemoveUsenameFromAccounts < ActiveRecord::Migration[6.0]
  def change
    remove_column :accounts, :usename, :string
  end
end
