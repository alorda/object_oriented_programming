class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hi, my name is #{@name}"
  end

end

class Student < Person
  def learn
    puts "I get it!"
  end

end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object"
  end

end

# end of classes and methods and now to call them:

chris = Instructor.new("Chris")
chris.greet

student1 = Student.new("Cristina")
student1.greet 
