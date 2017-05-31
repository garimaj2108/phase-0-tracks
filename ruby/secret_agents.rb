# pseudocode
# First we will define encrypt method
# Here, we will take a parameter, and test it for the following conditions
# To iterate through the string we need to compare it against the length of the parammeter, where index is initialized at 0
# After that we need to work with edge cases by giving an if Conditional
# Then we will use elsif to determine what to do when we encounter " "
# And if none of the above conditions occur then we will simply iterate through the loop and store the next alphabet in place of the current one.
# ----------------------------------------------------------------------------

# taking a parameter input here
def encrypt (input)
  index = 0
  # Checking for condition that till the time index does not reach input parameter's length, keep looping

  while index < input.length

  # if input is "z" then go to the next alphabet and chop the first character

     if input[index] == "z"
       input[index] = input[index].next.chop
     elsif
       input[index] == " "
       puts "do nothing"
  # whenever u take an input go to the next character, downcase it and store the new character at the input's old position
     else
       input[index] = input[index].next.downcase
     end
    index += 1
end
  input
end

# pseudocode
# Now we will define decrypt method
# Here, we will take a parameter, and test it for the following conditions
# To iterate through the string we need to compare it against the length of the parammeter, where index is initialized at 0
# Here we will also declare a alphabet variable so as to compare the input's position against alphabet
# Now we will store the index of the input against the alphabet's index
# Then we will use elsif to determine what to do when we encounter " "
# Now we will subtract the stored index with 1 and store it
# ------------------------------------------------------------
def decrypt (input)
  alphabet ="abcdefghijklmnopqrstuvwxyz"
  index = 0

  while index < input.length
    decrypted_word = alphabet.index(input[index])
    if input[index] == " "
      puts "Do nothing"
    else
    # otherwise, change this aforementioned value index for a prior letter
      input[index] = alphabet[decrypted_word-1]
  end
  index +=1
end
  input
end

#---------------------------------------------------
=begin
  Taking user input and calling the defined methods on the input
=end

puts "Please enter whether you would like to decrypt or encrypt a password (Enter values encrypt or decrypt)"
action = gets.chomp

puts "Please enter your password. It should include alphabets and numbers"
password = gets.chomp

# if encrypt is called on, call the encrypt method
if action =="encrypt"
  encryption= encrypt(password)
  puts "Your encrypted password is #{encryption}"

# if decrypt is called on, call the decrypt method
elsif action == "decrypt"
  decryption= decrypt(password)
  puts "Your encrypted password is #{decryption}"
else
  puts "Please enter a valid input"
end



