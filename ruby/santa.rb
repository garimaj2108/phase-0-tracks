# Declared a Santa class
class Santa

  attr_reader :age, :ethnicity
  attr_accessor :gender

# Instance method speak greets for holidays!
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

# This instance method takes a cookie type as parameter
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

# Ruby special method initialize
  def initialize(gender,ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(140)
    puts "Initializing a #{@gender} Santa instance"
  end

# This method increases age by 1
  def celebrate_birthday
    @age = @age + 1
    puts "Now Santa's age is #{@age}"
  end

# This method is deleting
  def get_mad_at(reindeer_name)
    i = 0
    while i < @reindeer_ranking.length
      if reindeer_name == @reindeer_ranking[i]
        @reindeer_ranking.delete(@reindeer_ranking[i])
        @reindeer_ranking << reindeer_name
      end
      i += 1
    end
    puts "Now the reindeer ranking is #{ @reindeer_ranking}"
  end

=begin
# getter method
  def age
    @age
  end

#getter method
  def ethnicity
    @ethnicity
  end

#getter method
def gender
  @gender
end

# setter method
  def gender=(new_gender)
    @gender = new_gender
  end
=end

end

#santas = []
# Array of example genders
example_genders = ["agender", "female", "male", "bigender", "gender fluid", "N/A"]
# Array of example ethnicities
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# Iterate 100 times
100.times do

# Create a new instance of class Santa
  new_santa = Santa.new(example_genders.sample, example_ethnicities.sample)
# santas << new_santa - had declared an array earlier

# set gender to unknown if meets condition
  if example_genders == "N/A"
    new_santa.gender = "unknown"
    puts "Now the gender is #{new_santa.gender}"
  end

# Driver code
  new_santa.speak
  new_santa.eat_milk_and_cookies("Macadamia nut")
  puts"Santa is currently #{new_santa.age} years old."
  puts" Santa's ethnicity is #{new_santa.ethnicity}"
  new_santa.celebrate_birthday
  new_santa.get_mad_at("Dancer")

end


