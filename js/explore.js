/*
for every string input, loop through the string in a descending fashion,and store each looped character in a new variable and add to it our character at that index, so as to get a reverse string.
*/

//declared a reverse function

function reverse(word){
  var new_word = "";

// This for loop iterates through the word in a descending fashion and stores every character at index in a variable
  for (var i = word.length-1; i >= 0; i--) {
    new_word += word[i];
  }

  return new_word;
}

// Driver Code

// Used prompt keyword to accept user input
var rev_word = prompt("Enter a word/phrase to reverse!");

// Conditional
if (rev_word.length < 10) {
  console.log(reverse(rev_word));
}else{
  console.log("The word/ phrase entered is longer than 10 letters!")
}
