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

chris.teach
student1.learn

puts "Now I'm going to call #teach on Cristina the student and #teach on Chris the teacher. It won't work because those methods aren't shared between their classes; it would work if those methods were in the 'Person' class."

#Program crashes NOW:
student1.teach
chris.learn

#Specifically, because the #teach method is undefined or Student class and the #learn method is undefined for Instructor Class.
