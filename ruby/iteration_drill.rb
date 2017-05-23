# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----

# Iterating through each item
zombie_apocalypse_supplies.each do |supplies|
  puts "*#{supplies}*"
end



# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
# Organizer

def my_sort(array_1)
  index = 0
  while index < array_1.length
  index2 = index + 1
  while index2 < array_1.length
  if array_1[index] > array_1[index2]
  array_1[index],array_1[index2] = array_1[index2],array_1[index]
  end
  index2 += 1
 end
 index += 1
 end
 return array_1
 end

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars","shotgun", "compass", "CB radio", "batteries"]
my_sort(zombie_apocalypse_supplies)

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----


def is_there (supplies)
  zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars","shotgun", "compass", "CB radio", "batteries"]
  index = 0
  while true
  if  supplies == zombie_apocalypse_supplies[index]
    puts " Found #{supplies}"
  end
  index += 1
end
end

puts "Please enter the item you are looking for!(enter exit when you are done)"
item = gets.chomp.downcase
while item != "exit"
  status = is_there(item)
  puts "Enter another item:"
  item = gets.chomp.downcase
end

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----
# just re appended supplies without actually using the append method
zombie_apocalypse_supplies =["hatchet","water jug","binoculars","shotgun","compass"]
p zombie_apocalypse_supplies

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# To combine both lists use concat
 combined_list = zombie_apocalypse_supplies.concat(other_survivor_supplies)
 final_list = combined_list.uniq
# ----

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.

extinct_animals.each do |animal_type,extinction_year|
  puts "*#{animal_type} - #{extinction_year}*"
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

# Using if to meet certain conditions
extinct_animals.each do |animal_type,extinction_year|
  if extinction_year < 2000
  puts "*#{animal_type}"
end
end

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

# Updating by passing new values
extinct_animals["Tasmanian Tiger"] = 1933
extinct_animals["Eastern Hare Wallaby"] = 1887
extinct_animals["Dodo"] = 1659
extinct_animals["Pyrenean Ibex"] = 1997
extinct_animals["Passenger Pigeon"] = 1911
extinct_animals["West African Black Rhinoceros"] = 2008
extinct_animals["Laysan Crake"] = 1920

p extinct_animals


# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

# Just pass the values to be checked, in hash to determine whether they are included
extinct_animals["Andean Cat"] => nil
extinct_animals["Dodo"] => 1659
extinct_animals["Saiga Antelope"] => nil


# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
#delete is used to delete
extinct_animals.delete("Passenger Pigeon")
p extinct_animals

# shift is used to return the key value pair as a two item array
extinct_animals.shift
p extinct_animals

