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

// function for finding a key-value match
/* Pseudocode:
- The function will accept two hashes.
- If the key of hash_1 ,matches with the key of hash_2 && if the value of hash_1 matches with the value of hash_2, then we will find our matched key-value pair.
- Otherwise,  key-value pairs in the two hashes are not matching.
*/

// The function accepts two hashes as input
function match_hash(hash_1, hash_2){
  // Looping through both the hashes
  for (var key in hash_1){
    for(var key_1 in hash_2){
    // If the keys of both hash match and the value of both hash match
    if (key === key_1 && hash_1[key] === hash_2[key_1]) {
      console.log("The matched pair between two hashes is: " +key +" => "  + "\'" + hash_1[key] + "\'");
    }
    // If the above condition doesn't match
    else {
      console.log(key + " => " + "\'" + hash_1[key] + "\'" + " does not match, " + key_1 + " => " + "\'" + hash_2[key_1] + "\'");
    }
    }
  }
}

//------------------------------------------------

// function for finding a key-value match
/* Pseudocode:
- The function will accept a integer.
- Create a empty array
- Loop through the code and push words into array until it reaches the length of the array (length of array is the integer accepted in the function)
- Declare a variable that contains all alphabets
- Declare a variable that contains an empty string
- Loop through until it reaches the randomly generated number
- Add each looped letter to the word variable
- Push word to the array
*/

// Driver Code
console.log("The longest word is " +longest_word(["Glenna", "Rishabh", "Kim"]));
console.log("---------------------------")
console.log("The longest word is " +longest_word(["hey there", "hey", "hey there!!"]));
console.log("---------------------------")
console.log("The longest word is " +longest_word(["Everybode quotes", "unquote", "I quote"]));
console.log("---------------------------")
console.log(match_hash({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log("---------------------------")
console.log(match_hash({name: "Steven", age: 54}, {name: "Tamir", year: 54}));
console.log("---------------------------")





