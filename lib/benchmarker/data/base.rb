# frozen_string_literal: true

module Benchmarker
  module Data
    class Base < ::ActiveRecord::Base
      self.abstract_class = true
      establish_connection
    end
  end
end
