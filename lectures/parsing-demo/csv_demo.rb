require "csv"

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"

# # Parsing (reading from a CSV)
# CSV.foreach(filepath, headers: :first_row) do |row|
#   # p row
#   p "#{row["First Name"]}, #{row["Last Name"]}, #{row["Instrument"]}"
# end


# Storing into CSV
beatles = [
  ["John","Lennon","Guitar"],
  ["Paul","McCartney","Bass Guitar"],
  ["George","Harrison","Lead Guitar"],
  ["Ringo","Starr","Drums"]
]

CSV.open(filepath, 'wb') do |csv|
  csv << ["First Name", "Last Name", "Instrument"]
  beatles.each do |beatle|
    csv << beatle
  end
end
