// // Release 0
// create a longest_length variable set to null
// loop through an array
// at each index find the length of the string.
// compare each new_length to the longest_length
// save the length into a new variable new_length

function big_word(array) {
  var longest_words = ''
  var current_words = ''
  for (var i=0; i<array.length; i++) {
    current_words = array[i]
    if (current_words.length > longest_words.length) {
      longest_words = current_words
      longest_words
    }
    else {
      longest_words
    }
  }
}
var words = ["long phrase","longest phrase","longer phrase"]
console.log(big_word(words))

// Release 1
// create a function that take two hashes as objects
// loop through both hashes
// check each key in hash1 and see if it matches the key in hash2.
// iterate through

function names_ages(first, second) {
  var keyOne = []
  var keyTwo = []
  var valueOne = []
  var valueTwo = []
  if ( keyOne == keyTwo || valueOne == valueTwo ) {
    return true
  } else {
    return false
  }
}

names_ages( {name: "Steven", age: 54}, {name: "Tamir", age: 54} )

// Release 2
// create a function that takes an integer
// the integer will create the same number of objects in an array.
// randomly generate lengths of each string within the array.
// driver code executes 10 times: generates array, prints the array,feeds array to your "longest word" function, prints the result.

// function createArray(integer) {
// }