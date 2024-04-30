require "yaml"
require_relative 'scraper'

urls = fetch_movie_urls

movies = urls.map do |url|
  scrape_movie(url)
end
p movies

# Storing


File.open("movies.yml", "w") do |f|
  f.write(movies.to_yaml)
end
