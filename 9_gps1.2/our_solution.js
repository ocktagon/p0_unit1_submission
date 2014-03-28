// GPS 1.2 - JavaScript

// YOUR FULL NAMES:
//  1.Dominick Oddo
//  2.Aki Suzuki

////////////////////////////////
//  1. "YOU SIGNED... WHO?!"
////////////////////////////////
////////////////////////////////

var aki = {
  name: "Aki Suzuki",
  age: 36,
  quote: "Dev Bootcamp is cool"
};

var dom = {
  name:"Dominick Oddo",
  age: 23,
  quote: "I like javascript!"
};

// var userInput = 'quote';
// aki[userInput] = 'some new quote';
// aki.userInput // undefined


////////////////////////////////
//   2. "Here they Come!"
////////////////////////////////
////////////////////////////////


var sandler = {
  name:"Adam Sandler",
  age: 47 ,
  quote: "That's you're home.  Are you too good for your home?"
};

var bell  = {
  name:"Kristen Bell",
  age: 33,
  quote: "Do you want to build a snow man?"
};

var carey = {
  name:"Jim Carey",
  age: 52,
  quote: "So you're telling me there's a chance?  Yeah"
};

var clients = [aki, dom, sandler, bell, carey];



////////////////////////////////
//    3. "TIME IS MONEY!"
////////////////////////////////
////////////////////////////////

// CONSTRUCTOR FUNCTION, to create objects of this 'kind' or 'type'
function Client(name, age, quote) {
  this.name = name;
  this.age = age;
  this.quote = quote;
};


var shooterMcGavin = new Client("Shooter McGavin", 48, "Just stay out of my way... or you'll pay. Listen to what I say.");
shooterMcGavin.constructor === Client;
shooterMcGavin.name === "Shooter McGavin";
shooterMcGavin.age === 48;
shooterMcGavin.quote === "Just stay out of my way... or you'll pay. Listen to what I say.";



////////////////////////////////
//   4. "SHOW 'EM OFF!"
////////////////////////////////
////////////////////////////////

// for (i=0; i < clients.length; i++) {
//   console.log(clients[i].name +"'s age is " + clients[i].age + " and his favorite quote is " + clients[i].quote + ".");
// };

for (var client in clients){
  console.log(client.name +"'s age is " + client.age + " and his favorite quote is " + client.quote + ".");
};

for (var c in clients){
  console.log(clients[c].name);
}


////////////////////////////////
//      ** BONUS **
////////////////////////////////
////////////////////////////////