# frozen_string_literal: true

module Benchmarker
  module Data
    class Key < Base
      belongs_to :metric
    end
  end
end
