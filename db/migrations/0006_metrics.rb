# frozen_string_literal: true

class Metrics < ActiveRecord::Migration[6.0]
  def change
    create_table :metrics do |t|
      t.references(:framework)
      t.references(:value)
      t.references(:concurrency)
    end

    add_index(:metrics, %i[framework_id value_id concurrency_id])
  end
end
