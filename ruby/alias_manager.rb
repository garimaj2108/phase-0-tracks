=begin
  We will start with defining a method for vowels. In this method we will be iterating through the vowel list.
  Then we declare a method for taking name input and processing fake name. Here we will accept the user input and convert into lower case and split it so that it can be accessed as arrays.
  Then we list conditional statements which will be exceuted as per situation.
  Finally we declare a hash to store the user input with details of their real and fake names.
=end

#Declared constant
VOWELSLIST = ['a', 'e', 'i', 'o', 'u']

# Change all vowels to the next
def next_vowels(vowel)

  # block runs list
  VOWELSLIST.length.times do |item|
    if vowel == VOWELSLIST[item - 1]
      vowel = VOWELSLIST[item]
      break
    end
  end
  vowel
end


# defining a method to take a real name and output a fake one
def fake_identities(real_name)

  # input is downcase, split, and has reverse positions
  new_alias = real_name.downcase.split(' ').reverse
  # use map! to mutate name
  new_alias.map! {|name_info| name_info.split('')}

  new_alias.map! do |name_info|
    name_info.map! do |vowel|

      if vowel == "z"
        vowel = "a"
      elsif next_vowels(vowel) == vowel
        vowel.next!
        if next_vowels(vowel) != vowel
          vowel.next!
        end
        vowel
      else
        next_vowels(vowel)
      end
    end
    # returns a string and capitalizes first letter
    name_info.join('').capitalize
  end
  new_alias.join(' ') # keeps blank space here, otherwise it doesnt work
end

#  hash to store user's inputs

secret_identity = {
    new_alias: [],
    real_name:[]
}

# while true, loop the user for name
index = 0
while true
  puts "Please enter a name (Enter 'quit' to exit): "
  name = gets.chomp

  break if name == "quit"

  secret_identity[:real_name].push(name)
  secret_identity[:new_alias].push(fake_identities(name))
  index += 1
end

puts "#{secret_identity[:new_alias]}'s real name is #{secret_identity[:real_name]}"