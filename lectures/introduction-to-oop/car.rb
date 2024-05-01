# frozen_string_literal: true

# NAMING CONVENTION #
#### file name  => singular && lower_snake_case
#### class name => singular && UpperCamelCase

class Car
  ## DATA / STATE / ATTRIBUTES
  ## We use the attributes to define
  ## what your class is/how it looks like

  ## constructor method: is called when we do Car.new ##
  def initialize(color)
    # instance variables defined w/ @ - used to hold the state
    @engine_started = false
    @color = color
    @number_of_doors = 4
    # @brand
    # @horse_power
    # @sun_roof
    # ...
  end

  attr_reader :number_of_doors # , :color
  # attr_writer :color
  attr_accessor :color # attr_reader + attr_writer

  # BEHAVIOR - Instance Methods
  def start_engine
    # calls those methods from the private interface
    start_fuel_pump
    init_spark_plug
    @engine_started = true
  end

  def engine_started?
    @engine_started
  end

  # READER / GETTER
  ## reader == reading permissions ##

  ## those are equivalent to attr_reader ##
  ## instance method to expose value of @instance_variables
  # def color
  #   @color
  # end

  # def number_of_doors
  #   @number_of_doors
  # end

  # WRITER / SETTER
  ## writer == writing permissions ##

  ## those are equivalent to att_writer ##
  ## instance method to change the value of @instance_variables
  # def color=(new_color)
  #   @color = new_color
  # end

  # everything below this keyword, will be only usable within the Class
  private

  def start_fuel_pump
    puts 'pumping fuel...'
  end

  def init_spark_plug
    puts 'sparkling plug...'
  end
end
