# require 'bundler'

# Bundler.require

# ActiveRecord::Base.establish_connection(
#     :adapter => "sqlite3",
#     :database => "db/development.sqlite"
# )


ENV['SINATRA_ENV'] ||= "development"

require 'bundler'
Bundler.require(:default, ENV['SINATRA_ENV'])

require_all 'app'
