require 'coveralls'
require 'simplecov'

require 'simplecov'
SimpleCov.start

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app/app.rb')

require 'capybara'
require 'capybara/rspec'
require 'capybara/poltergeist'
require 'rspec'
require 'database_cleaner'

# require_relative 'support/database_cleaner'

require_relative 'helpers/session_helper.rb'
require_relative 'helpers/room_helper.rb'
require_relative 'helpers/bookings_helper.rb'
require_relative 'helpers/user_helper.rb'
require_relative 'helpers/date_helper.rb'

include DatabaseCleaner

Capybara.app = Makersbnb
Capybara.default_driver = :poltergeist

RSpec.configure do |config|
  config.include Capybara::DSL
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end


  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.append_after(:each) do
    DatabaseCleaner.clean
  end

end
