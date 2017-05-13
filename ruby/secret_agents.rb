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


