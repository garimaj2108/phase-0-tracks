// function for longest word / phrase
/* Pseudocode:
- I am using a bubble sort technique to compare the lengths of the words.
- Compare the first word at index 0, to the second word at index 1.
- If the second index length is greater than the first index length, then swap places.
- Now the word at second index will be at first
- This will go on, until the entire array has been iterated.
- At the end, we should get the longest word at index 0.
- So our function will return the word at index 0 in our input array
*/

function longest_word(input_array) {
  // Loops through array with index set at 0
  for (var i = 0; i < input_array.length; i++) {
    // Loops through array with index set at 1
    for (var i_2 = 1; i_2 < input_array.length; i_2++) {
      // Condition to swap array elements at index
      if (input_array[i_2].length > input_array[i].length){
        var result = input_array[i];
        input_array[i] = input_array[i_2];
        input_array[i_2] = result;
      }

    }
  }
  // Our longest word / phrase will be sorted and stored at index 0
  return input_array[0];
}

// -----------------------------------------------

/* Pseudocode:
- The function will accept two hashes.
- If the key of hash_1 ,matches with the key of hash_2 && if the value of hash_1 matches with the value of hash_2, then we will find our matched key-value pair.
- Otherwise,  key-value pairs in the two hashes are not matching.
*/


// Driver Code
console.log("The longest word is " +longest_word(["Glenna", "Rishabh", "Kim"]));
console.log("The longest word is " +longest_word(["hey there", "hey", "hey there!!"]));
console.log("The longest word is " +longest_word(["Everybode quotes", "unquote", "I quote"]));
