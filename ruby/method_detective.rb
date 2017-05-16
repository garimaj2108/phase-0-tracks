# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”
# This program will give give the following output “InVeStIgAtIoN”. It uses upcase, downcase, operator, gets and chomp methods.

def capitalizing (word)
  index = 0
  while index < word.length
    if index % 2 == 0
      puts word[index] = word[index].upcase
    else
      puts word[index] = word[index].downcase
    end
      index += 1
  end
end

puts "Please enter a word"
user_input = gets.chomp
capitalizing (user_input)


#insert - it is used to insert other-str at a specificied index, thereby modifying the str
"zom".insert(2, 'o')
=> “zoom”

#center - it centers str in width. If width is greater than length of the string then it returns a new string of length width, str centered and padded with padstr; otherwise it will just return str.
"enhance".center(20)
=> "    enhance    "

#upcase returns a copy of str with all lowercase letters replaced with their uppercase counterparts.
# Declare another variable to store this output, otherwise next time it will return str with lowercase
"Stop! You’re under arrest!".upcase
=> "STOP! YOU’RE UNDER ARREST!"

# << or append concatenates the given object to the string
"the usual" << " suspects"
=> "the usual suspects"

#prepend - It prepends the given string to existing string
" suspects".prepend("the usual ")
=> "the usual suspects"

#chop - removes the last character and if the string ends with return carriage then they are removed too.
"The case of the disappearing last letter".chop
=> "The case of the disappearing last lette"

#delete - it deletes the other string specified to be deleted and returns a copy of the string with all charachters in the intersection deleted.
"The mystery of the missing first letter".delete "T"
=> "he mystery of the missing first letter"

# squeeze - It returns a new string where runs of the same character that appear in the set are replaced by a single character.(Here multiple spaces are replaced by a single space character)
"Elementary,    my   dear        Watson!".squeeze
=> "Elementary, my dear Watson!"

# (What is the significance of the number 122 in relation to the character z?)
# Ruby uses utf-8 encoding by default and 122 represents the integer ordinal of "z" character in string, also known as codepoint when applied to Unicode strings to the given block.

"z".each_codepoint {|c| print c, ' '}
=> 122

# count - it counts all the characters in a defined set or counts a specified character in the defined set.
"How many times does the letter 'a' appear in this string?".count"a"
=> 4