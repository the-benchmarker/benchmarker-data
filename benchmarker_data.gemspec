# frozen_string_literal: true

require_relative "lib/benchmarker/data/version"

require "active_record"

require "benchmarker/data/models/model"
require "benchmarker/data/models/language"
require "benchmarker/data/models/framework"
require "benchmarker/data/models/key"
require "benchmarker/data/models/metric"
require "benchmarker/data/models/concurrency"

Gem::Specification.new do |spec|
  spec.name = "benchmarker_data"
  spec.version = Benchmarker::Data::VERSION
  spec.summary = "Shared data for the benchmarker tools"
  spec.description = "Shared data for the benchmarker tools"
  spec.authors = "Marwan Rabbâa"
  spec.email = "waghanza@gmail.com"
  spec.homepage = "https://github.com/the-benchmarker/benchmarker-data"
  spec.license = "MIT"

  spec.add_runtime_dependency "activerecord", "~> 6.0", ">= 6.0.2"
  spec.add_runtime_dependency "rake", "~> 13.0", ">= 13.0.0"

  spec.files = `find *`.split("\n").uniq.sort.reject(&:empty?)
  spec.require_paths = ["lib/benchmarker"]
end
