# frozen_string_literal: true

def timer
  puts 'Starting the method #timer'
  start_time = Time.now

  # FROM MY METHOD TO CALL THE BLOCK
  yield # WILL CALL THE BLOCK!

  puts 'Back to method #timer'
  end_time = Time.now

  elapsed_time = end_time - start_time
  puts "It took #{elapsed_time} to perform the action"
end

timer do
  # MAKE THE EATING
  puts 'Inside the block'
  puts 'Going to work'
  sleep(2)
  puts 'Arrived at work!'

  puts 'Leaving the block'
end

timer do
  puts 'Inside the block'

  puts 'Making coffee'
  sleep(2)
  puts 'Coffee done!'

  puts 'Leaving the block'
end

5.times do |i|
  puts i
end

def repeat(number_of_times)
  (0..number_of_times - 1).each do |element|
    # THE USER WILL DEFINE WHAT TO DO
    yield(element)
  end
end

repeat(3) do |i|
  puts i
end
#=> 0
#=> 1
#=> 2
