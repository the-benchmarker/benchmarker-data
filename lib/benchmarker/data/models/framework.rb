# frozen_string_literal: true
module Benchmarker
  module Data
    class Framework < Model
      has_one :language
    end
  end
end
