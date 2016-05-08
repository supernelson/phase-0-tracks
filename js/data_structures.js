var colors = ['blue','red','white','black']
var names = ['kunal','nelson','mike','john']
colors.push('green')
names.push('jordan')

// assign colors to horses
// add colors & names to the horse object
// for loop to match names to colors
var horses = [];
  for (var i=0; i < names.length; i++) {
    var horse = {};
    horse.names = names[i]
    horse.colors = colors[i]
    horses.push(horse)
  }
console.log(horses)

function Cars(brand, model, color) {
  console.log("Our new car:", this);

  this.brand = brand
  this.model = model
  this.color = color

  this.drive= function(){
  return ('this is a ' + this.color + ' ' +this.brand + ' ' + this.model)
  }
}

tesla = new Cars('Tesla', 'Model S', 'white');
console.log(tesla.drive());

bmw = new Cars('BMW', '428', 'black');
console.log(bmw.drive());

// loop all the object properties
for (var prop in tesla) {
  console.log(prop);
}

// loop all the object values
// [] notation evaluates
// . notation does not evaluate
for (var prop in tesla) {
  console.log(tesla[prop]);
}

// drive in [] vs .
console.log(tesla.drive());