require "json"

# TODO - let's read/write data from beatles.json
filepath = 'data/beatles.json'

file_content = File.read(filepath)
# p file_content

parsed_file_content = JSON.parse(file_content)
p parsed_file_content["title"]
p parsed_file_content["beatles"][1]['first_name']



beatles = { beatles: [
  {
    first_name: "John",
    last_name: "Lennon",
    instrument: "Guitar"
  },
  {
    first_name: "Paul",
    last_name: "McCartney",
    instrument: "Bass Guitar"
  },
  # etc...
]}

File.open(filepath, 'wb') do |file|
  json_string = JSON.generate(beatles)
  p json_string
  file.write(json_string)
end
