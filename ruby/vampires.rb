puts "Enter number of employees"
no_of_employee = gets.chomp

i = 1

# Starting a loop
while i <= no_of_employee.to_i

  # Getting name from the prospective new employee
  puts "What is your name?"
  employee_name = gets.chomp

  # Getting employee's age and year of birth
  puts "Please provide your age."
  age = gets.to_i

  puts "What is your year of birth?"
  year = gets.to_i

  current_year = 2017
  # Verifies the age of age of employee with its year of birth
  age_validity = current_year.to_i - year

  # Ask the employee if they would like garlic bread to eat
  puts "We have some great garlic bread in the cafeteria,would you like to eat some (yes / no)"
  garlic_bread = gets.chomp

  # Ask employee if they would like to enroll in Company's health insurance program
  puts "Would you like to enroll in the company's health insurance? (yes / no)"
  health_insurance = gets.chomp

  # Ask employee for known allergies
  puts "Please enter a allergy"
  allergies = []
  input = nil

  while true
  input = gets.chomp
  break if input == "done"
  break if input == "sunshine"
  puts "Enter any other allergy"
  allergies << input
end
puts "Allergies: " + allergies.join(", ")

  i = i + 1

# Test -conditions
  if input == "sunshine"
    puts("Probably a vampire")
  elsif (employee_name === "Drake Cula" || employee_name === "Tu Fang")
        puts " Definitely a vampire"
  elsif age == age_validity && (garlic_bread == "yes" || health_insurance == "yes")
        puts "Probably not a vampire."
  elsif (age != age_validity && garlic_bread == "no") || health_insurance == "no"
        puts "Probably a vampire."
  elsif age != age_validity && (garlic_bread == "no" && health_insurance == "no")
        puts "Almost certainly a vampire"
  else
        puts "Results inconclusive"
  end
end
puts"Actually, never mind! What do these questions have to do with anything? Let's all be friends."
