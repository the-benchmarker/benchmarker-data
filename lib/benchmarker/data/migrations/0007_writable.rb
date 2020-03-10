# frozen_string_literal: true

class Writable < ActiveRecord::Migration[6.0]
  def change
    create_table :writable, id: false do |t|
      t.references :language
      t.references :framework
    end
  end
end
