def encrypt(sentence)
  # 1. definir um array para o alfabeto
  alphabet = ('a'..'z').to_a
  # p alphabet
  # 2. Quebrar a string em um array de letras
  letters = sentence.downcase.split('')
  # 3. Iterar sobre o array de letras
  shifted_letters = letters.map do |letter|
    # Para cada letra
    # 4. fazer o algoritmo voltar menos 3 no alfabeto
    # 4.1 Identificar o index da letra no alfabeto
    index = alphabet.index(letter)
    if index.nil?
      letter
    else
      # 4.2 Subtrai 3 do index
      new_index = index - 3
      # 4.3 Acessar a nova letra do alfabeto (shifted)
      alphabet[new_index]
    end
  end
  # 6. Juntar o array de letras NOVAS em string novamente
  shifted_letters.join.upcase

end
puts encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG") == "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
