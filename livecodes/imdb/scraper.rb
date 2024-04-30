require 'open-uri'
require 'nokogiri'

def fetch_movie_urls
  fake_browser = {"User-Agent" => "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0"}
  url = 'https://www.imdb.com/chart/top/'
  # 1. Call the open uri to vist the page
  html_file = URI.open(url, fake_browser).read
  # p html_file
  # 2. Call the nokogiri gem to parse the result
  html_doc = Nokogiri::HTML.parse(html_file)
  # p html_doc
  # 3. Inspect the page and find a way to scrape the relevant information
  top_five = html_doc.search('.ipc-title-link-wrapper')[0..4]
  links = []
  top_five.each do |link_element|
    partial_link = link_element.attribute('href').value
    real_link = partial_link[0...partial_link.index('?')]
    links << "https://www.imdb.com/#{real_link}"
  end
  links
end



def scrape_movie(url)
  # ONLY ONE MOVIE
  fake_browser = {
    "User-Agent" => "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0",
    "Accept-Language" => "en-US"
  }

  html_file = URI.open(url, fake_browser).read
    # 2. Call the nokogiri gem to parse the result
  html_doc = Nokogiri::HTML.parse(html_file)
  artists = []
  html_doc.search('.ipc-metadata-list__item:contains("Stars") ul li').each do |element|
    name = element.text
    artists << name unless artists.include?(name)
  end
  # p artists
  director = html_doc.search('.ipc-metadata-list__item:contains("Director") ul li').first.text

  summary = html_doc.search('.sc-7193fc79-3.gVZVor span').first.text
  year = html_doc.search('.ipc-inline-list.ipc-inline-list--show-dividers.sc-d8941411-2.cdJsTz.baseAlt li:first-child').first.text.to_i
  title = html_doc.search('h1').first.text

  {
    title: title,
    year: year,
    summary: summary,
    cast: artists,
    director: director
  }

end

# p scrape_movie
