# frozen_string_literal: true

class Languages < ActiveRecord::Migration[6.0]
  def change
    create_table :languages do |t|
      t.string :label, index: { unique: true }
    end
  end
end
