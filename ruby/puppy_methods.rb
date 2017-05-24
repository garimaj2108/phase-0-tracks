class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak (bark_num)
    bark_num.times {puts "Woof!"}
  end

  def roll_over
     puts "*rolls over*"
  end

  def dog_years(owner_age)
    dog_age = owner_age * 7
    puts "If owner's age is #{owner_age}, then dog's age in human years is #{dog_age}"
  end

  def bark(visitor)
    puts "My dog is barking at #{visitor}"
  end

  def initialize
    puts "Initializing new puppy instance..."
  end

end

my_dog = Puppy.new

my_dog.fetch("ball")

my_dog.speak(2)

my_dog.roll_over

my_dog.dog_years(3)

my_dog.bark("Post-man")

class Cat
  def initialize
    puts "Initializing new instance of class Cat.."
  end

  def meow (num)
    num.times {puts"Meowww"}
  end

  def purr (owner)
    puts "The cat purrs when #{owner} gives her a loving pat!"
  end
end