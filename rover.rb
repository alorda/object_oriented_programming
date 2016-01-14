class Rover
# attr_accessor :x, :y, :dir,

  def initialize
    puts "Provide the size of the plateau with two numbers, separated by a space like this: '7 7'"
    @plateau_size = gets.split(" ")
    

    puts "Provide the coordinates of the rover's location. It must be within the size of the plateau you provided.\n For example, enter '2, 5' with the coordinates separated by a comma."
    @coordinates = gets
    @x = @coordinates[0]
    @y = @coordinates[1]
    puts "The rover's x-coordinate is #{@x} with a y-coordinate of #{@y}."
    puts "Thanks! Tell me which direction the rover is facing using:\n'n' for North\n's' for South\n'e' for East\n'w' for West.\n"
    @direction = gets.upcase
  end

  def read_instruction
    puts "Give me a series of instructions on where to move using 'L' for rotate left, 'R' for rotate right, and 'M' to move; you don't need to put spaces between these, so it can look like 'LMRMML'. Cool? direct me!:"
    @instructions = gets.split("") # => gives you an array of ["L", "M"...]


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
#
