# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "json"
require "open-uri"

url = "http://tmdb.lewagon.com/movie/top_rated?api_key=<your_api_key"
what_is_this_even = URI.open(url).read
film = JSON.parse(what_is_this_even)

puts "#{film["name"]} - #{film["bio"]}"
