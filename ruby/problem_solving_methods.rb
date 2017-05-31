# RELEASE 0
# Defining method to search an array for a number, and returning that number's position in the array using index

def search_array (arr,num)
  idx = 0
  while idx < arr.length
    if arr[idx] == num
      return idx
    end
    idx +=1
  end
  return nil
end

# calling the method
#arr = [42, 89, 23, 1]
#p search_array(arr, 1)
#p search_array(arr, 24)

# RELEASE 1
# Fibonacci Numbers
# defining a method to add previous two numbers and assign the total to the next number
def fib (num)
  arr=[0,1]
idx = 0
while idx < num - 2
 next_idx = arr[idx] + arr[idx+1]
  arr << next_idx
  idx+=1
end
return arr
end

# calling the method
#p fib(6)


# RELEASE 2
# Bubble sort - Pseudocode
=begin
- We define a method, which accepts a parameter.
- Then we will initialize index to 0, so that we can compare index against length of the array and keep incrementing the index until it reaches the end of the array.
- Then we will initialize index2, which is index2 = index + 1 and keep incrementing index2  until it reaches the end of the array.
We initialized index2 for better readability and because index2 will reach the end of the loop earlier than index 1.
-Then, we use conditional "if" to compare and confirm if the index is greater than index2, if yes, then we swap their places and return an array.
=end

def sorting (arr)
  idx =0
  while idx < arr.length
  idx2= idx +1
  while idx2 < arr.length
  if arr[idx] > arr[idx2]
    arr[idx], arr[idx2] = arr[idx2], arr[idx]
 end
 idx2+=1
end
idx+=1
end
  return arr
end

# calling the method
#arr=[1,4,2,9,6,3,7,5,1,0]
#sorting (arr)