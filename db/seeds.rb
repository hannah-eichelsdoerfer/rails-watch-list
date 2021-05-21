# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Faker::Movie.title
# Faker::Movie.quote
# rand(1..10)

# require 'json'
# require 'open-uri'

puts "!!!Destroying all Movies!!!"
Movie.destroy_all

puts "---Creating movies"

apiURL= "http://tmdb.lewagon.com/movie/top_rated"
imageURL = "https://image.tmdb.org/t/p/w500"
movies_serialized = URI.open(apiURL).read
movies = JSON.parse(movies_serialized)
movies["results"].each do |movie|
  puts movie["title"]
  Movie.create(title: movie["title"], overview: movie["overview"], poster_url: "#{imageURL}#{movie['poster_path']}", rating: movie["vote_average"])
end

# puts movies
# top_movies = movies["results"]
# top_movies.each do |movie|
#   Movie.create(title: movie.title, overview: movie.overview, poster_url: movie.poster_path, rating: movie.vote_average)
# end

# Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
# Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://upload.wikimedia.org/wikipedia/en/1/19/Titanic_%28Official_Film_Poster%29.png", rating: 7.9)
Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)
Movie.create(title: "Mamma Mia!", overview: "Donna (Meryl Streep), an independent hotelier in the Greek islands, is preparing for her daughter's wedding with the help of two old friends. Meanwhile Sophie, the spirited bride, has a plan. She secretly invites three men from her mother's past in hope of meeting her real father and having him escort her down the aisle on her big day.", poster_url: "https://upload.wikimedia.org/wikipedia/en/thumb/a/a6/MammaMiaTeaserPoster.JPG/220px-MammaMiaTeaserPoster.JPG", rating: "10")

puts "---Done creating movies!"
