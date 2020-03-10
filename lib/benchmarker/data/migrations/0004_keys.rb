# frozen_string_literal: true

class Keys < ActiveRecord::Migration[6.0]
  def change
    create_table :keys do |t|
      t.string :label, index: { unique: true }
    end
  end
end
