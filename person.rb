class Person
  attr_accessor :first_name, :last_name # => generates GETTER/SETTER for you; accessor gives you r/w access.
  attr_reader :age # => read-only access
  attr_writer :nickname # => write-only access

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{@first_name} #{@last_name}" # => this is calling the METHOD, not the @instance variable.
  end

  def speak
    "I am a person"
  end

end

class Instructor < Person
  def teach
    puts "OOP is cool!"
  end

  def speak
    "I am an instructor"
  end
end

class AssistantInstructor < Instructor
  def speak
    "I am an assistant instructor"
  end
end

class Student < Person
  def learn
    puts "I get it!"
  end

  def speak
    "I am a student"
  end

end


# # GETTER/READER
#   def first_name
#     @first_name
#   end
#
# # OK to have two methods with 'same name'; the second
# # method takes an argument so it is a DIFFERENT method.
# # THIS IS A SETTER
#   def first_name=(new_first_name)
#     @first_name = new_first_name
#   end
#
#   def last_name
#     @last_name
#   end
#
#   def last_name=(new_last_name)
#     @last_name = new_last_name
#   end
#methods above are boiler plate code; same names, structure are the same, but they do different things.
# AVOID BOILER PLATE CODE

mina = Person.new("Mina", "Mikhail") #Mina is a new person; this is how you make a new person.
jona = Person.new("Jonathan", "Alorda")
