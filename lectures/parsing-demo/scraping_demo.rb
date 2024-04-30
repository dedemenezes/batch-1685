require "open-uri"
require "nokogiri"

# Let's scrape recipes from https://www.bbcgoodfood.com
ingredient = 'eggs'
url = "https://www.bbcgoodfood.com/search?q=#{ingredient}"

html_content = URI.open(url).read

html_doc = Nokogiri::HTML.parse(html_content)
# p html_doc
# will ALWAYS return an array
html_doc.search("a.link.d-block h2.heading-4").each do |element|
  p element.text
end
