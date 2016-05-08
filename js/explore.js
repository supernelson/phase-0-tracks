// create a function that takes "hello" as an argument
// loop through each letter
// start an empty string variable
// current letter variable
// length of string - index = new index position
// add

function wordFlip(string) {
  var newString='';
  for (i=0; i<=string.length; i++) {
    newString+=string[(string.length)-[i]];
  };
  console.log(newString);
}
// bug undefined printing out begin & end

wordFlip('hello');

