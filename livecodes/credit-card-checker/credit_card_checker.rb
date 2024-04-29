def credit_card_checker(card_number)
  regex = /^(?<first_digit>\d)\d{15}$/
  # card_number.match?(regex) ? 'Valid credit card number' : 'Invalid credit card number'
  # Remove any unwanted character (empty space)
  match = card_number.gsub(' ', '').match(regex)
  return 'Invalid credit card number' if match.nil?
  # Guard clause

  # Vis or Master depends on the first digit
  if match[:first_digit] == '4'
    'Valid Visa credit card number'
  elsif match[:first_digit] == '5'
    'Valid Mastercard credit card number'
  else
    'Valid credit card number'
  end
end
