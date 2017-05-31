# Added couple of methods to class Puppy
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

# This method takes in a integer as parameter and prints woof integer times
  def speak (bark_num)
    bark_num.times {puts "Woof!"}
  end

#This method just prints "*rolls over*"
  def roll_over
     puts "*rolls over*"
  end

#This method takes in a integer as parameter, multilplies that integer times 7 and prints out dog age in human years
  def dog_years(owner_age)
    dog_age = owner_age * 7
    puts "If owner's age is #{owner_age}, then dog's age in human years is #{dog_age}"
  end

#This method takes in a string as parameter and prints out the visitor name
  def bark(visitor)
    puts "My dog is barking at #{visitor}"
  end

#This is a special ruby method
  def initialize
    puts "Initializing new puppy instance..."
  end

end

# Driver code, initializing new instance of class Puppy and testing with methods
my_dog = Puppy.new

my_dog.fetch("ball")

my_dog.speak(2)

my_dog.roll_over

my_dog.dog_years(3)

my_dog.bark("Post-man")

# Created a new class Cat
class Cat
#This is a special ruby method
  def initialize
    puts "Initializing new instance of class Cat.."
  end

# This method takes in a integer as parameter and prints Meowww integer times
  def meow (num)
    num.times {puts"Meowww"}
  end

# This method takes in a string as parameter and prints out the string
  def purr (owner)
    puts "The cat purrs when #{owner} gives her a loving pat!"
  end
end

# Pseudocode
# - First declare an empty array.
#- then intitialize count to 0 and put a conditional, that while count does not reach 50, keep looping.
#- Now initialize a instance of class Cat, which will keep initializing until it reaches 50, so technically we now have 50 instances of class Cat
#- Keep incrementing count
# now add instances (feline) of class Cat to our empty array
my_array = []
count = 0
while count < 50
  feline = Cat.new
  count += 1
  p count
  my_array << feline
end
p my_array

# Iterate through each instance of the array and use defined methods of class Cat on these instances
my_array.each do |instance_name|
  instance_name.meow(2)
  instance_name.purr("Garima")
end

