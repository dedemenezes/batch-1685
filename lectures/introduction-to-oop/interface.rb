require_relative 'car'

## Here we are creating two *instances* of the Car class
green_car = Car.new('green')
p green_car
#<Car:0x00007f522b46c4c0 @engine_started=false, @color="green", @number_of_doors=4>

black_car = Car.new('black')
p black_car
#<Car:0x00007f522b473ef0 @engine_started=false, @color="black", @number_of_doors=4>

## Here we are reading the state of our engine attribute
p black_car.engine_started?
puts "Turning it black car on...."
## Here we are calling the start_engine method to CHANGE the state of our car instance
black_car.start_engine

puts "is it on?"
puts black_car.engine_started?
p black_car
#<Car:0x00007fe0f7423670 @engine_started=true, @color="black", @number_of_doors=4>

puts "What is the color of your car?"
## Here we are reading the state of our color attribute
puts "The color is: #{black_car.color}"
puts "Let's paint it...."
## Here we are writing a new value to our color attribute
black_car.color = 'red'
puts "Finished"
puts "What is the color of your car?"
## Here we are reading the state of our color attribute
puts "The color is: #{black_car.color}"
