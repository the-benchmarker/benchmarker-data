# frozen_string_literal: true
module Benchmarker
  module Data
    class Metric < Model
      has_one :framework
      has_one :value
      has_one :concurrency
    end
  end
end
