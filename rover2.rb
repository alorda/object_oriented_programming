module Turn
  def turn(instruction)
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
      # else @direction = @direction
    end
  end
end


module Move
# Determines new coordinate, for x or y, and updates it depending on direction of rover at time of move.
  def move
    case @direction
    when "N"
      @y_coordinate += 1
    when "S"
      @y_coordinate -= 1
    when "E"
      @x_coordinate += 1
    when "W"
      @x_coordinate -= 1
    end
  end
end


class Rover

  include Turn
  include Move

  attr_accessor :x_coordinate, :y_coordinate, :direction, :name

  def initialize(name)
    @name = name
  end

# Changing name of initialize method to read_instruction because we have attr_accessors which help us initialize the rovers.
  def read_instruction#(x_coordinate, y_coordinate, direction)

    # puts "Provide the size of the plateau with two numbers, separated by a space like this: '7 7'"
    # @plateau_size = gets.chomp.split(" ")
    # puts "     *****\nPlateau width is #{@plateau_size[0]} units by #{@plateau_size[1]} height units."

    puts "     *****"

    puts "Provide the coordinates of #{@name}'s location. It must be within the size of the plateau you provided.\nAlso tell me the direction #{@name} is facing with one letter for North, South, East, or West.\nType something like: 2 5 E"
    @coordinates = gets.chomp.split(" ")
    @x_coordinate = @coordinates[0].to_i # to int?
    @y_coordinate = @coordinates[1].to_i # to int?
    @direction = @coordinates[2].upcase
    puts "     *****\n #{@name} is at coordinates #{@x_coordinate}, #{@y_coordinate} facing #{@direction}.\n     *****"

    puts "Give #{@name} a series of instructions on where to move using 'L' for rotate left, 'R' for rotate right, and 'M' to move; you don't need to put spaces between these, so it can look like 'LMRMML'. Cool? direct #{@name}!:"

    @instructions = gets.chomp.upcase.split("") # => gives you an array of ["L", "M"...]
    # We need to take that array of instructions and
    # turn it into something meaningful
    # The robort has to turn first (if it's told to L or R) and then Move after it has turned.

    @instructions.each do |instruction|
        if instruction == "L" || instruction == "R"
          turn(instruction)
        elsif
          instruction == "M"
          move
        end

    end

    # Give final coordinates and direction of the rover
    puts "#{@name} is at new coordinates #{@x_coordinate}, #{@y_coordinate} facing #{@direction}."

  end
end

#Program Starts

# Prompt user for plateau dimensions only once
puts "Provide the size of the plateau with two numbers, separated by a space like this: '7 7'"
@plateau_size = gets.chomp.split(" ")
puts "     *****\nPlateau width is #{@plateau_size[0]} units by #{@plateau_size[1]} height units."

# Now that we've prompted user for plateau dimensions, we can initialize each rover

rover1 = Rover.new("rover_1")
rover2 = Rover.new("rover_2")


rover1.read_instruction
rover2.read_instruction
