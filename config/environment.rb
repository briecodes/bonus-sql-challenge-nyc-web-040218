require 'bundler'
Bundler.require

# Setup a DB connection here
# hi = Dir["./db/guests.db"]
DB = {:conn => SQLite3::Database.new("./db/guests.db")}
