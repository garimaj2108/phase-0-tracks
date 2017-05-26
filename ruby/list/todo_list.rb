class TodoList

# Initialize method is taking a array as input
  def initialize(chores)
    @chores = chores
  end

# adding item to the array
  def add_item(item)
    @chores << item
  end

# deleting item from the array
  def delete_item(item)
    @chores.delete(item)
  end

# retrieve a particular item from the array
  def get_item(index_number)
    @chores[index_number]
  end

# getter method
  def get_items
    @chores
  end

end
