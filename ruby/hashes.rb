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

client_details.each do|key,value|
puts "#{key} => #{value}"
end


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

client_details.each do|key,value|
puts "#{key} => #{value}"
end







