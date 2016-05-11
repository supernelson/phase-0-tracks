// // Release 0
// create a longest_length variable set to null
// loop through an array
// at each index find the length of the string.
// compare each new_length to the longest_length
// save the length into a new variable new_length

function big_word(array) {
  var longest_words = '';
  var current_words = '';
  for (var i=0; i<array.length; i++) {
    current_words = array[i];
    if (current_words.length > longest_words.length) {
      longest_words = current_words;
    }
  }
  return longest_words;
}
var words = ["long phrase","longest phrase","longer phrase"]
console.log(big_word(words))

// Release 1
// create a function that take two hashes as objects
// loop through both hashes
// check each key in hash1 and see if it matches the key in hash2.
// iterate through

function names_ages(first, second) {
  if ( first.name == second.name || first.age == second.age ) {
    return true;
  } else {
    return false;
  }
}

console.log(names_ages( {name: "Steven", age: 54}, {name: "Tamir", age: 54} ));

// Release 2
// create a function that takes an integer
// the integer will create the same number of objects in an array.
// randomly generate lengths of each string within the array.
// driver code executes 10 times: generates array, prints the array,feeds array to your "longest word" function, prints the result.

function generate(number) {
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  var array = [];
  // generate word length
  for (var i=0; i < number; i++) {
    var wordLength = Math.floor(Math.random()*10);
    var word = ''
    // generating the letters for the word
    for (var x=0; x <= wordLength; x++) {
      var letterIndex = Math.floor(Math.random()*26);
      word += alphabet.charAt(letterIndex);
    }
    array.push(word);
  }
  return array;
}
console.log(generate(3));

// Driver Code
for (var i=0; i<=10; i++) {
  var result = generate(2);
  console.log(result);
  // expecting array
  console.log(big_word(result));
}