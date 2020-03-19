# frozen_string_literal: true

class Frameworks < ActiveRecord::Migration[6.0]
  def change
    create_table :frameworks do |t|
      t.string(:label)
      t.references(:language)
    end

    add_index(:frameworks, %i[label language_id], unique: true)
  end
end
