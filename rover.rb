class Rover
# attr_accessor :x, :y, :dir,

  def initialize
    puts "Provide the size of the plateau with two numbers, separated by a space like this: '7 7'"
    @plateau_size = gets.chomp.split(" ")

    puts "Provide the coordinates of the rover's location. It must be within the size of the plateau you provided.\n For example, enter '2, 5' with the coordinates separated by a comma and space."
    @coordinates = gets.chomp.split(", ")
    @x = @coordinates[0] # to int?
    @y = @coordinates[1] # to int?
    puts "The rover's x-coordinate is #{@x} with a y-coordinate of #{@y}.Thanks!\nTell me which direction the rover is facing using: \nn for North \ns for South \ne for East \nw for West."
    @direction = gets.chomp.upcase
  end

  def read_instruction
    puts "Give me a series of instructions on where to move using 'L' for rotate left, 'R' for rotate right, and 'M' to move; you don't need to put spaces between these, so it can look like 'LMRMML'. Cool? direct me!:"
    @instructions = gets.chomp.split("") # => gives you an array of ["L", "M"...]
    # We need to take that array of instructions and
    # turn it into something meaningful
    # The robort has to turn first (if it's told to L or R) and then Move after it has turned.


  end


  def turn

    case
    when

  end


  def move


  end

end


# Program Begins

# rover1 = Rover.new

# Then initialize the read_instruction

# Decide the new direction

# Based on direction, decide whether you're +/- x or y

# Based on the move, output new coordinates based on original starting point.
