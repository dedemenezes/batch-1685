# frozen_string_literal: true

students = ['Harry', 'Hermione', 'Hagrid', 'Neville', 'Draco']
# index       0         1           2           3        4

puts "#{students[0]} rocks!"
puts "#{students[1]} rocks!"
puts "#{students[2]} rocks!"
puts "#{students[3]} rocks!"


for index in 0..(students.size - 1)
  puts "#{index + 1}. #{students[index].upcase} rocks!"
end

for student in students
 puts student
end
