# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

# Initializes objects or instances
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Calls to other methods
  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  private

# Calculates the predicted number of deaths based on population density
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Using conditionals to determine the speed of spread of diseases based on population density
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |k,v|
  state = VirusPredictor.new(k, v[:population_density], v[:population])
  state.virus_effects
end

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

#=======================================================================
# Reflection Section
=begin

#What are the differences between the two different hash syntaxes shown in the state_data file?

The rocket sign is the old hash syntax, which is still valid now, but the colon syntax is easier, cleaner, and more intuitive.
----------------------------------------------------------#What does require_relative do? How is it different from require?

Require relative loads a file relative to the location you are in, while using require you need specify the entire location path.

----------------------------------------------------------
#What are some ways to iterate through a hash?

.each_key - calls block once, for each_key in hash passing the key as a parameter.
.each_pair - calls block once for each key in a hash, passing the key-value pair as parameters.
.each_value - calls block once, for each_key in hash passing the value as a parameter.
.each calls - block once for each key in a hash, passing the key-value pair as parameters.

----------------------------------------------------------
#When refactoring virus_effects, what stood out to you about the variables, if anything?

For the virus_effects method, the predicted_deaths and the speed_of_spread don't explicitly require instance variables to be passed because the methods already contain details of instance variables.

----------------------------------------------------------
#What concept did you most solidify in this challenge?

Working through nested data structures especially when iterating.

----------------------------------------------------------
=end
