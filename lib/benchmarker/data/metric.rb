# frozen_string_literal: true

module Benchmarker
  module Data
    class Metric < Base
      belongs_to :framework
      belongs_to :value
      belongs_to :concurrency
    end
  end
end
