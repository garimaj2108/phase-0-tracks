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
    @age = 0
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
end

santas = []
example_genders = ["agender", "female", "male", "bigender", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  new_santa = Santa.new(example_genders[i], example_ethnicities[i])
  santas << new_santa
  if example_genders[i] == "bigender" || example_genders[i] == "gender fluid"
    puts "You go Santa!"
  end
  if example_ethnicities[i] == "white" && example_genders[i] == "male"
    puts "Too cliche for a Santa"
  end
  if example_genders[i] == "N/A"
    new_santa.gender = "unknown"
    puts "Now the gender is #{new_santa.gender}"
  end

end

  santas.each do |instance|
  instance.speak
  instance.eat_milk_and_cookies("Macadamia nut")
  puts"Santa is currently #{instance.age} years old."
  puts" Santa's ethnicity is #{instance.ethnicity}"
  instance.celebrate_birthday
  instance.get_mad_at("Dancer")
end

