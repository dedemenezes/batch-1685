def acronymize(string)
  # separate string into words
  # interate and transform each word
  first_letters = string.split.map do |word|
    # access first char of each string
    word[0].upcase
  end
  first_letters.join
  # return new upcase string
end
# call method and compare the result
puts acronymize("") == ""
puts acronymize('Away fRom KeYbOaRd') == "AFK"
