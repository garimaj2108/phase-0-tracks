# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# swapcase returns a copy of str with uppercase alphabetic characters converted to lowercase and vice versa. swapcase --> new str
"iNvEsTiGaTiOn".swapcase
=> “InVeStIgAtIoN”


puts "Please enter a word"
user_input = gets.chomp
capitalizing (user_input)


#insert - it is used to insert other-str at a specificied index, thereby modifying the str
#insert(index,other_str) --> str
"zom".insert(2, 'o')
=> “zoom”

#center - it centers str in width. If width is greater than length of the string then it returns a new string of length width, str centered and padded with padstr; otherwise it will just return str.
#center(width,padstr='') -->new_str
"enhance".center(20)
=> "    enhance    "

#upcase returns a copy of str with all lowercase letters replaced with their uppercase counterparts.
#upcase --> new_str
"Stop! You’re under arrest!".upcase
=> "STOP! YOU’RE UNDER ARREST!"

# << or append concatenates the given object to the string
# str << obj --> str
"the usual" << " suspects"
=> "the usual suspects"

#prepend - It prepends the given string to existing string
#prepend(other_str) --> str
" suspects".prepend("the usual ")
=> "the usual suspects"

#chop - removes the last character and if the string ends with return carriage then they are removed too.
#chop --> new_str
"The case of the disappearing last letter".chop
=> "The case of the disappearing last lette"

#delete - it deletes the other string specified to be deleted and returns a copy of the string with all charachters in the intersection deleted.
#delete([other_str]+) --> new_str
"The mystery of the missing first letter".delete "T"
=> "he mystery of the missing first letter"

# squeeze - It returns a new string where runs of the same character that appear in the set are replaced by a single character.(Here multiple spaces are replaced by a single space character)
#squeeze([other_str]*) --> new_str
"Elementary,    my   dear        Watson!".squeeze
=> "Elementary, my dear Watson!"

#What is the significance of the number 122 in relation to the character z?
# Ruby uses utf-8 encoding by default and 122 represents the integer ordinal of "z" character in string, also known as codepoint when applied to Unicode strings to the given block.

#each_codepoint {|integer| block} --> str
"z".each_codepoint {|c| print c, ' '}
=> 122

# count - it counts all the characters in a defined set or counts a specified character in the defined set.
#count([other_str]+) --> fixnum
"How many times does the letter 'a' appear in this string?".count"a"
=> 4