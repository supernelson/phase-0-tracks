// create a function that takes "hello" as an argument
// start an empty string variable
// loop through each letter
// find the position at the opposite side of the string.
// length of string - index = new index position

function reverse(string) {
  var newString = ""
  for (var i=0; i<=string.length; i++) {
    var newString = newString + string[(string.length)-[i+1]]
  }
  if (1 + 1 == 2) {
    console.log(newString)
  }
}
// bug undefined printing out begin & end

reverse("hello")
