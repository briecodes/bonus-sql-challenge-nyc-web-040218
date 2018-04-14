# Parse the CSV and seed the database here! Run 'ruby db/seed' to execute this code.
require 'sqlite3'
require 'csv'
require 'pry'

sql = <<-SQL
        CREATE TABLE guests (
          id INTEGER PRIMARY KEY,
          year INTEGER,
          occupation TEXT,
          date TEXT,
          group TEXT,
          name TEXT
        );
        SQL

DB[:conn].execute(sql)

csv_text = File.read("./daily_show_guests.csv")
csv = CSV.parse(csv_text, :headers => true)
