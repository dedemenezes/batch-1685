# frozen_string_literal: true

students = ['Harry', 'Hermione', 'Hagrid', 'Neville', 'Draco']
# index       0         1           2           3        4

# EACH
# Just go over the collection
# returns the array itself
puts '=============================='
puts 'Iterator #each'
students.each do |student|
  puts "#{student} rocks!"
end

# EACH_WITH_INDEX
# Go over the collection
# providing access to each one of the elements and their index
# returns the array itself
puts '=============================='
puts 'Iterator #each_with_index'
students.each_with_index do |student, index|
  puts "#{index + 1}. #{student}"
end

# MAP
# returns a new array and each element
# of this new array is TRANSFORMED to
# the last line of the block
puts '=============================='
puts 'Iterator #map'
new_array = students.map do |student|
  upcased_name = student.upcase

  upcased_name
end
p new_array

# Doing the same thing BUT USING #each
upcased_students = []
# iterate over the array
students.each do |student|
  # upcase each one of the elements
  upcased_students << student.upcase
  # push to the new array
end
p upcased_students

# MORE MAP EXAMPLES!

musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']
upcased_musicians = musicians.map do |element|
  element.split(' ')[0]
end
p upcased_musicians

# COUNT
# count the elements based on a CONDITION
# returns an integer
puts '=============================='
puts 'Iterator #count'
name_starting_w_r = musicians.count do |element|
  # TAKES A CONDITION is true
  element.start_with?('R')
end
p name_starting_w_r

# SELECT
# filter elements based on a CONDITION
# returns a new array
puts '=============================='
puts 'Iterator #select'
musicians_with_r = musicians.select do |muscian|
  # TAKES A CONDITION is true
  muscian.start_with?('R')
end
p musicians_with_r

# TRYING OUT!
puts '=============================='
puts 'TRYING the iterator #reverse_each'
musicians.reverse_each do |element|
  p element
end
puts '=============================='
