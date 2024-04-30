require "json"
require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub username
url = "https://api.github.com/users/ssaunier"

# Make an HTTP request
html_response = URI.open('https://api.github.com/users/dedemenezes').read
# Parse the content
user = JSON.parse(html_response)
p user["login"]
