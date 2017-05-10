
# Asking user for hamster name
puts "Please enter the hamster's name!"
hamster_name = gets.chomp

# Asking user for hamster volume preference
puts "Volume Preference for hamsters (1 to 10)"
vol = gets.to_i

# Asking user for fur color
puts"Please enter the fur color"
fur_color = gets.chomp

# Asking user if hamster is a good candiddate
puts "Is hamster a good candidate for adoption? (yes/no)"
hamster_verdict = gets.chomp

if hamster_verdict == "yes"
  puts "The hamster is a good candidate for adoption"
else hamster_verdict== "no"
  puts "Its a bad hamster"
end

# Guess the estimated age
puts "Please provide an estimated age for hamster (NA / age)"
age = gets.chomp

if age == "NA"
  age = nil
  puts "We cannot determine the age"
else
  age = age.to_f
  puts "#{hamster_name} is #{age} years old"
end
