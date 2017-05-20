# This program accepts user input and stores it in a hash
# Pseudocode:
# First declare an empty hash as you need to take user input and store it in the hash
# Then ask user to enter their client's name, age, email, no.of cildren and decor theme
# then iterate through the hash and printout the results
#Then ask the user if they would like to update any details
# If user says yes, then take input for updates and update in hash
# then iterate through the hash and printout the results


# Declaring an empty hash
client_details = {}

puts "Welcome to Interior Design Client Solutions!\n"
puts "Please enter the following details to start with your client diaries!"

  puts "Enter Client's name:"
  client_details[:name] = gets.chomp

  puts "Enter Client's age:"
  client_details[:age] = gets.to_i

  puts "Enter Client's email address:"
  client_details [:email] = gets.chomp

  puts "No. of children:"
  client_details [:children] = gets.to_i

  puts "Decor Theme:"
  client_details [:decor] = gets.chomp

#Iterating through each key,value pair and printing it out
client_details.each do|key,value|
puts "#{key} => #{value}"
end

# Asking the user, if they would like to update the form
puts "Would you like to update the form? (yes / no)"
input = gets.chomp
if input == "yes"
  puts "Enter which form field would you like to update? (name /age/email/children/decor)"
  form_field = gets.chomp
  form_field = form_field.to_sym
  puts "Please enter the new value"
  update = gets.chomp
  client_details[form_field] = update
end

#Iterating through each key,value pair and printing it out
client_details.each do|key,value|
puts "#{key} => #{value}"
end







