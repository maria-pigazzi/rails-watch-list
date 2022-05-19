# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "json"
require "open-uri"

url = "http://tmdb.lewagon.com/movie/top_rated"
website = URI.open(url).read
films = JSON.parse(website)
films["results"].each do |film|
  Movie.create(title: film["original_title"], overview: film["overview"], poster_url: film["poster_path"],
    rating: film["vote_average"])
end
