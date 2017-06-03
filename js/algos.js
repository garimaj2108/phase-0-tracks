// defined function for longest word / phrase
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

// Driver Code
console.log("The longest word is " +longest_word(["Glenna", "Rishabh", "Kim"]));
console.log("The longest word is " +longest_word(["hey there", "hey", "hey there!!"]));
console.log("The longest word is " +longest_word(["Everybode quotes", "unquote", "I quote"]));
