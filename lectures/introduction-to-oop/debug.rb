require 'pry-byebug'

def capitalize_name(first_name, last_name)
  # binding.pry
  capitalized_first_name = first_name.capitalize
  capitalized_last_name = last_name.capitalize

  # binding.pry
  "#{capitalized_first_name} #{capitalized_last_name}"
end


puts capitalize_name('andre', 'menezes')
