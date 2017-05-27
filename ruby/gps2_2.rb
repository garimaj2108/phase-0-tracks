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


