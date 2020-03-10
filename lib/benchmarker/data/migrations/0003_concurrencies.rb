# frozen_string_literal: true

class Concurrencies < ActiveRecord::Migration[6.0]
  def change
    create_table :concurrencies do |t|
      t.numeric :level, index: { unique: true }
    end
  end
end
