def encrypt(sentence)
  # 1. definir um array para o alfabeto
  # 1. Define alphabet array
  alphabet = ('a'..'z').to_a
  # p alphabet
  # 2. Quebrar a string em um array de letras
  # 2. Split string into array of letters
  letters = sentence.downcase.split('')
  # 3. Iterar sobre o array de letras
  # 3. Iterate over letters array
  shifted_letters = letters.map do |letter|
    # Para cada letra
    # For each letter
    # 4. fazer o algoritmo voltar menos 3 no alfabeto
    # 4. Shift letter three letter behind in the alphabet
    # 4.1 Identificar o index da letra no alfabeto
    # 4.1 Identify the letter index in the alphabet
    index = alphabet.index(letter)
    if index.nil?
      letter
    else
      # 4.2 Subtrai 3 do index
      # 4.2 Subtract 3 from index
      new_index = index - 3
      # 4.3 Acessar a nova letra do alfabeto (shifted)
      # 4.3 Access new alphabet letter
      alphabet[new_index]
    end
  end
  # 6. Juntar o array de letras NOVAS em string novamente
  # 6. Join shifted letters array into string
  shifted_letters.join.upcase
end
puts encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG") == "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
