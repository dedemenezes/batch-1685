def acronymize(string)
  # fazer um split retornar 3 string
  # com essas strings da pra fazer um map
  first_letters = string.split.map do |word|
    # Pega o primeiro elemento de cada string
    word[0].upcase
  end
  first_letters.join
  # Gera uma nova string com esses elementos em maiúsculo
end
# Chamar o método e comparar com resultado correto
puts acronymize("") == ""
puts acronymize('Away fRom KeYbOaRd') == "AFK"
