$symbol1 = :Jordan

class Person
  attr_accessor :name, :age
  def initialize(name, age)
  @name = name
  @age = age
  end
end
per1 = Person.new("Test", 18)

array = [
  [1, 44, "string for the array"],
   [11, $symbol1, per1.name, per1.age ]
]

puts array
