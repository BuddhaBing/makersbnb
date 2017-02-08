ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require 'sinatra/flash'
require 'sinatra/partial'
require 'slim'
require 'slim/include'

require_relative 'server'

require_relative 'controllers/users'
require_relative 'controllers/sessions'
require_relative 'controllers/rooms'
require_relative 'controllers/bookings'
require_relative 'controllers/payments'

require_relative 'data_mapper_setup'

require_relative 'helpers'

include Helpers
