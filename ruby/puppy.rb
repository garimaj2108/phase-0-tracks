=begin
SPECIES --> TERRIER

CHARACTERISTICS
Name: Yorkshire Terrier
Coat Color: Dark grey
Friendly: yes
Eye Count: 2
Hair: Straight
Temperament: Over protective

BEHAVIOR
Jump
Bark
Lick
Tail wagging
=end

# Declared a class, which is a blueprint
class Puppy
  # Method to control barking only when we have visitors
  def bark(visitor)
    puts "Barking at #{visitor}"
  end
  # Method to rollover when name is called out
  def rollover(name)
    puts "Now rollover like a good boy #{name}!"
  end
end

#Creating a new instance of class Puppy
cute_puppy = Puppy.new

#calling class defined method on class instance
# cute_puppy can access this method because it is a instance of Puppy class
cute_puppy.rollover(leah)
