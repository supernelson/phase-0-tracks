// create a string variable "hello"
// loop through each letter
// start an empty string variable
// current letter variable
// length of string - index = new index position
// add

function reverse() {
  var string = 'hello';
  var new_string= '';
  for (i=0; i<=string.length; i++) {
    new_string += string[(string.length)-[i]];
    console.log(new_string);
  }
}

console.log(reverse());
// bug undefined printing out begin & end
// bug