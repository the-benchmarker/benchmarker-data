# frozen_string_literal: true

module Benchmarker
  module Data
    class Model < ::ActiveRecord::Base
      self.abstract_class = true
    end
  end
end
