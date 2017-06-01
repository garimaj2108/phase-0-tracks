// Paired with Tony Rodriguez for this assignment

// A color array
var colors = ["Brown", "Black", "Yellow", "White"];
// A array of horse names
var horse_name = ["Ed", "Leggy", "Long Tail", "Snow white"];

console.log("The original list contains horses of the following colors: \n" +colors);
// Adding color to the 'colors' array
colors.push("Grey");
console.log("Now the list is: \n" +colors +"\n");

console.log("The original list contains the following horses: \n" +horse_name);
// Adding a name to 'horse_name' array
horse_name.push("Gandalf");
console.log("Now the list is: \n" +horse_name +"\n");

// Declaring a empty object
var barn = {};

// looping through, to assign a color to each horse
for (i=0; i < colors.length; i++){
  barn[horse_name[i]] = colors[i];
}

console.log(barn);

console.log("Enough with the horses, now is the time to move on to Cars!");
console.log("\n");

// declaring a constructor function
function Car(make, model, year) {
  // Here this refers to the new object we are making
  console.log("Our new car is:", this);

// Assigning user input to constructor variables
  this.make = make;
  this.model = model;
  this.year = year;

// declaring a function, which prints all the details of our car
  this.display = function() {console.log("Car details: " +this.make +" " +this.model +" " +this.year +".")};
  console.log("CAR INITIALIZATION COMPLETE");
}

// Driver Code

console.log("Let's build a new car!");
// Calling the constructor function
var myCar = new Car("Nissan","Altima","2014");
console.log(myCar);
myCar.display();
console.log("--------------");

console.log("Let's build another car!");
// Calling the constructor function
var yourCar = new Car("Honda","Accura","2017");
console.log(yourCar);
yourCar.display();
console.log("--------------");

console.log("Why not another car!");
// Calling the constructor function
var lastCar = new Car("Ford","Focus","2010");
console.log(lastCar);
lastCar.display();
console.log("--------------");







