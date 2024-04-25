# frozen_string_literal: true

# DATA TYPES
'Hogwarts' #STRING
12 # Integer
2.56 # Float
true  # TrueClass   BOOLEANS
false # FalseClass  BOOLEANS
(1..10) # Range
(1...10) # Range
['Andre', 36, true, []]

school = 'Hogwarts'

puts "I studied at #{school}"


# RECAP ARRAY
students = ['Harry', 'Hermione', 'Hagrid', 'Neville']
# index       0         1           2           3
p students.size
p students.length
p students.count

# CREATE
students << 'Draco'

# READ
students[2]

# UPDATE
students[2] = 'Ron'

# DELETE
students.delete_at(2)
# students.delete('Hagrid')
