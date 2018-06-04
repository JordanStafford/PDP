$f1 = :Jordan

class Dog
  def initialize(breed, name)
    @breed = breed
    @name = name
  end
end

array = [
  [1, 55, 33, 'string', $f1 ],
  ['another array']
]
array << [Dog.new]

puts array
