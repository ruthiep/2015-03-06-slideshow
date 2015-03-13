require "sinatra"
require "sinatra/activerecord"
require "json"
require "sqlite3"
require "pry"

set :database, {adapter: "sqlite3", database: "database/slideshow.db"}

require_relative 'database/db_setup'
# require_relative 'models/plant'
# DATABASE = SQLite3::Database.new("slideshow.db")

# DATABASE.results_as_hash = true

require_relative "slide"

get "/" do
  erb :homepage
end

get "/1" do

  slide = Slide.find(1)
  binding.pry
  slide_hash = slide.to_hash
  slide_hash.to_json
end


