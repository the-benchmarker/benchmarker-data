# frozen_string_literal: true

class Values < ActiveRecord::Migration[6.0]
  def change
    create_table :values do |t|
      t.float(:value)
      t.references(:key)
    end
  end
end
