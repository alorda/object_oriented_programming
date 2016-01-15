module Turn
  def turn
      if @direction = "N" && @instructions = "R"
        @direction = "E"
      elsif @direction = "N" && @instructions = "L"
        @direction = "W"
      elsif @direction = "S" && @instructions = "R"
        @direction = "W"
      elsif @direction = "S" && @instructions = "L"
        @direction = "E"
      elsif @direction = "E" && @instructions = "R"
        @direction = "S"
      elsif @direction = "E" && @instructions = "L"
        @direction = "N"
      elsif @direction = "W" && @instructions = "R"
        @direction = "N"
      elsif @direction = "W" && @instructions = "L"
        @direction = "S"
      else @direction = @direction
    end
  end
end



    end
  end
end

module Move
# Determines new coordinate, for x or y, and updates it depending on direction of rover at time of move.
  def move
    case @direction
    when "N"
      y_coordinate =+ 1
    when "S"
      y_coordinate -= 1
    when "E"
      x_coordinate += 1
    when "W"
      x_coordinate -= 1
    end
  end


class Rover
# attr_accessor :x_coordinate, :y_coordinate, :direction,

  def initialize#(x_coordinate, y_coordinate, direction)
    puts "Provide the size of the plateau with two numbers, separated by a space like this: '7 7'"
    @plateau_size = gets.chomp.split(" ")
    puts "     *****\nPlateau width is #{@plateau_size[0].to_s} units by #{@plateau_size[1].to_s} height units."

    puts "     *****"

    puts "Provide the coordinates of the rover's location. It must be within the size of the plateau you provided.\nAlso tell me the direction the rover is facing with one letter for North, South, East, or West.\nType something like: 2 5 E"
    @coordinates = gets.chomp.split(" ")
    @x_coordinate = @coordinates[0] # to int?
    @y_coordinate = @coordinates[1] # to int?
    @direction = @coordinates[2].upcase
    puts "     *****\nThe rover is at coordinates #{@x_coordinate}, #{@y_coordinate} facing #{@direction}.\n     *****"
  end

  def read_instruction
    puts "Give me a series of instructions on where to move using 'L' for rotate left, 'R' for rotate right, and 'M' to move; you don't need to put spaces between these, so it can look like 'LMRMML'. Cool? direct me!:"
    @instructions = gets.chomp.split("") # => gives you an array of ["L", "M"...]
    # We need to take that array of instructions and
    # turn it into something meaningful
    # The robort has to turn first (if it's told to L or R) and then Move after it has turned.

end


# Program Begins

# rover1 = Rover.new

# Then initialize the read_instruction

# Decide the new direction

# Based on direction, decide whether you're +/- x or y

# Based on the move, output new coordinates based on original starting point.
