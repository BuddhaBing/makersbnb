require 'data_mapper'
ENV['RACK_ENV'] ||= 'development'
require './app/data_mapper_setup'

namespace :db do
  desc 'Non destructive upgrade'
  task :auto_upgrade do
    DataMapper.auto_upgrade!
    puts 'Auto-upgrade complete (no data loss)'
  end

  desc 'Destructive upgrade'
  task :auto_migrate do
    DataMapper.auto_migrate!
    puts 'Auto-migrate complete (data was lost)'
  end

  desc 'populate db with samples'
  task :populate do
    require_relative "auto-populate"
    puts "auto_populatation complete"
  end
end

if ENV['RACK_ENV'] != 'production'
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new :spec

  task default: [:spec]
end
