# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # use split to convert a string into an array
  # set default quantity
  # iterate through every array item and add that to a hash, with default quantity as its pair
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] --> Hash

def create_list(user_input, qty = 1)
  list = user_input.split(" ")
  new_list = {}
  list.each do |item|
    new_list[item] = qty
  end
  new_list
end


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: Add item name and quantity to the existing list
# output: A list with new item added

def add_item(list,item_name, qty=1)
  list[item_name]  = qty
  list
end


# Method to remove an item from the list
# input:list,item name
# steps: use the delete method on the list and provide the item name to be deleted
# output: A list with the item removed

def remove_item(list,item_name)
  list.delete(item_name)
  list
end


# Method to update the quantity of an item
# input: list, item name and quantity
# steps: The update method, updates the quantity of an existing item. In case the item does not exist, the user is informed through a printed message that the item does not exist in the list.

def update_quantity(list, item_name, qty)
  if !list.include?(item_name)
    puts "This item does not not exist in the list!"
  else
    list[item_name] = qty
  end
list
end

=begin
# I also tried tweaking this method to add a item which does not exist, in case user erroneously mentions a item not on list!
def update_quantity(list, item_name, qty)
if !list.include?(item_name)
    puts "This item does not not exist in the list! Would you like to add it? (yes/no)"
    input = gets.chomp
    if input == "yes"
      list[item_name] = qty
  elsif input == "no"
    puts "You chose not to update"
  end
  end
  if list.include?(item_name)
    list[item_name] = qty
  end
  end

=end


# Method to print a list and make it look pretty
# input: list
# steps: Use puts to print it out as a string
# output: All items on seperate lines, to make it look pretty

def print_list(list)
  puts "GROCERY LIST:"
  list.each do |item, qty|
    puts "* #{item}, qty:#{qty}"
  end
  puts "--------------------------"
end


# driver code
example = create_list("Carrots Apples Cereal Pizza")
add_item(example,"Lemonade", 2)
add_item(example,"Tomatoes", 3)
add_item(example,"Onions")
add_item(example,"Ice Cream", 4)
print_list(example)
remove_item(example, "Lemonade")
update_quantity(example,"Ice Cream",1)
print_list(example)

# Release 4: Reflect
=begin
-----------------------------------------
What did you learn about pseudocode from working on this challenge?
- It really helps you with the actual code, because pseudo code make you systematically think about the input, steps and output.
- I am going to use this format for all my further assisgnments.
-----------------------------------------
What are the tradeoffs of using arrays and hashes for this challenge?
I think arrays and hashes work perfectly for this assignment.
-----------------------------------------
What does a method return?
A method implicitly returns the last line of the code.
-----------------------------------------
What kind of things can you pass into methods as arguments?
- You can pass a integer, string, array, hash,another method or a variable which contains any of the above data types or method as a argument to methods.
-----------------------------------------
How can you pass information between methods?
- You can call one method inside another method or simply store a method in a variable and call that variable in other methods.
- This will allow the other method to access the first method.
- You will pass either of these as a argument to a method.
-----------------------------------------
What concepts were solidified in this challenge, and what concepts are still confusing?
- I was very relieved to do this particular GPS, because prior to this I was struggling a lot with passing methods around, but now I feel more confident.
- With some practice I think I should be set.
-----------------------------------------
=end