# frozen_string_literal: true

require('bundler/gem_tasks')
task(default: :spec)

require('active_record')
require('active_record/database_configurations/database_config')
require('active_record/database_configurations/url_config')

database_url = ENV.fetch('DATABASE_URL')

namespace :db do
  task :create do
    database = ActiveRecord::DatabaseConfigurations::UrlConfig.new(nil, nil, database_url)

    ActiveRecord::Tasks::DatabaseTasks.create(database.config)
  end

  task :migrate do
    base_path = Gem.loaded_specs['benchmarker-data'].full_gem_path
    full_path = File.join(base_path, 'db', 'migrations')
    ActiveRecord::MigrationContext.new(full_path, ActiveRecord::SchemaMigration).migrate
  end

  task :drop do
    database = ActiveRecord::DatabaseConfigurations::UrlConfig.new(nil, nil, database_url)

    ActiveRecord::Tasks::DatabaseTasks.drop(database.config)
  end
end
