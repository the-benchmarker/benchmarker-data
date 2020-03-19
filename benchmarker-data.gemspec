# frozen_string_literal: true

require_relative("lib/benchmarker/data/version")

Gem::Specification.new do |spec|
  spec.name = "benchmarker-data"
  spec.version = Benchmarker::Data::VERSION
  spec.authors = ["Marwan Rabbâa"]
  spec.email = ["waghanza@gmail.com"]

  spec.summary = "Shared data for the benchmarker tools"
  spec.homepage = "https://github.com/the-benchmarker/benchmarker-data"
  spec.license = "MIT"
  spec.required_ruby_version = "~> 2.6"

  spec.metadata["allowed_push_host"] = "https://rubygems.pkg.github.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/the-benchmarker/benchmarker-data/releases"

  spec.add_runtime_dependency("activerecord", "~> 6.0")
  spec.add_runtime_dependency("pg", "~> 1.2")
  spec.add_runtime_dependency("rake", "~> 13.0")

  spec.add_development_dependency("bundler", "~> 2.0")

  spec.files = Dir.glob("lib/**/*.rb")
  spec.files << "LICENSE.txt"
  spec.files << "Rakefile"
  spec.require_paths = ["lib", "db/migrations"]
end
