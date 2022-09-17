import 'package:lab2_tutorial4/lab2_tutorial4.dart' as lab2_tutorial4;

void main(List<String> arguments) {
  
/*

// Topic : Boolean values

// some Boolean variables like 
const bool yes = true;
const bool no = false;

// Because of Dart’s type inference, you can leave off the type annotation:

// const yes = true;// same as const bool yes = true;

// const no = false;// same as const bool no = false;


// Boolean operators :

// Booleans are commonly used to compare values.

// Testing equality :

const doesOneEqualTwo = (1 == 2);
print(doesOneEqualTwo);// false

const doesOneEqualTwo1 = 1 == 2;
print(doesOneEqualTwo1);// false

// Testing inequality :

const doesOneNotEqualTwo = (1 != 2);
print(doesOneNotEqualTwo);// true

const alsoTrue = !(1 == 2);
print(alsoTrue);// true

// Testing greater and less than :

const isOneGreaterThanTwo = (1 > 2);
print(isOneGreaterThanTwo);// false

const isOneLessThanTwo = (1 < 2);
print(isOneLessThanTwo);// true

print(1 <= 2); // true
print(2 <= 2); // true

print(2 >= 1); // true
print(2 >= 2); // true

*/


// Boolean logic :

/*

// AND operator :

const isSunny = true;
const isFinished = true;
const willGoCycling = isSunny && isFinished;
print(willGoCycling);// true
// Print willGoCycling and you’ll see that it’s true. If either isSunny or isFinished were false, then willGoCycling

// OR operator :

const willTravelToAustralia = true;
const canFindPhoto = false;
const canDrawPlatypus = willTravelToAustralia || canFindPhoto;
print(canDrawPlatypus);// true
// Print canDrawPlatypus to see that its value is true. If both values on the right were false, then canDrawPlatypus would be false. If both were true, then canDrawPlatypus would still be true.

// Operator precedence :

const andTrue = 1 < 2 && 4 > 3;// true
print(andTrue);
const andFalse = 1 < 2 && 3 > 4;// false
print(andFalse);

const orTrue = 1 < 2 || 3 > 4;// true
print(orTrue);
const orFalse = 1 == 2 || 3 == 4;// false
print(orFalse);


// In This given below expressions precedence is comes in picture ,here && precedence is higher than || so first (3 > 4 && 1 < 2) is evaluated and than after (false || true) is evaluated and final answer is true.
print(false && true || true);//true
print(3 > 4 && 1 < 2 || 1 < 4);//true

// Overriding precedence with parentheses :

3 > 4 && (1 < 2 || 1 < 4); // false
(3 > 4 && 1 < 2) || 1 < 4; // true

// String equality :

const guess = 'dog';
const dogEqualsCat = guess == 'cat';
print(dogEqualsCat);// false

*/


/*

// Mini-exercises :

// 1. Create a constant called myAge and set it to your age.Then, create a constant named isTeenager that uses Boolean logic to determine if the age denotes someone in the age range of 13 to 19.
// Ans1 :
const myAge = 19;
const isTeenager = (myAge>=13 && myAge<=19);

// 2. Create another constant named maryAge and set it to 30.Then, create a constant named bothTeenagers that uses Boolean logic to determine if both you and Mary are teenagers.
// Ans2 :
const maryAge=30;
//const myAge=19;
const bothTeenagers = (myAge<=18 && maryAge<=18) && (myAge>=13 && maryAge>=13);//false

// 3. Create a String constant named reader and set it to your name. Create another String constant named ray and set it to 'Ray Wenderlich'. Create a Boolean constant named rayIsReader that uses string equality to determine if reader and ray are equal.
// Ans3 :
const String reader = "Jevin";
const String ray = "Ray Wenderlich";
const bool rayIsReader = (ray==reader) ;

// The if statement :

  if (2 > 1) {
    print('Yes, 2 is greater than 1.');
  }

// This given above statment print : Yes, 2 is greater than 1.

// The if-else clause :

  const animal = 'Fox';
  if (animal == 'Cat' || animal == 'Dog') {
    print('Animal is a house pet.');
  } else {
    print('Animal is not a house pet.');
  }
// Animal is not a house pet.

// Else-if chains :

  const trafficLight = 'yellow';
  var command = '';
  if (trafficLight == 'red') {
    command = 'Stop';
  } else if (trafficLight == 'yellow') {
    command = 'Slow down';
  } else if (trafficLight == 'green') {
    command = 'Go';
  } else {
    command = 'INVALID COLOR!';
  }
  print(command);

// This given above statment print : Slow down.
*/


/*

// Variable scope :

  const global = 'Hello, world';
  void main() {
    const local = 'Hello, main';
    if (2 > 1) {
      const insideIf = 'Hello, anybody?';
      print(global);
      print(local);
      print(insideIf);
    }
    print(global);
    print(local);
    // print(insideIf); // Not allowed!
  }

// The ternary conditional operator :
  const score = 83;
  String message;
  if (score >= 60) {
    message = 'You passed';
  } else {
    message = 'You failed';
  }
  
  print(message);

// (condition) ? valueIfTrue : valueIfFalse;

const score1 = 83;
const message1 = (score1 >= 60) ? 'You passed':'You failed';
print(message1);//You passed

*/

/*

// Mini-exercises :

// 1. Create a constant named myAge and initialize it with
// your age. Write an if statement to print out “Teenager”
// if your age is between 13 and 19, and “Not a teenager” if
// your age is not between 13 and 19.
// Ans1 :
const myAge =19;
if(myAge>=13 && myAge<=19)
  print("Teenager");
else 
  print("Not a teenager");

// 2. Use a ternary conditional operator to replace the else-
// if statement that you used above. Set the result to a variable named answer.
// Ans2 :
// const myAge =19;
const message = (myAge>=13 && myAge<=19) ? 'Teenager':'Not a teenager';

/*
// Switch Statement :

// An alternate way to handle control flow, especially for multiple conditions, is with a switch statement.

int c = 1;
  // where c is variable and which can be int,string or compile-time constant,switch will redirect the program control to one of the case value that follow.
  switch (c) {
   // each case keywords takes value and compare with the value using == to the variable and we can add many cases statements and last we add default statement
    case 1:
     // the break keyword used to break the switch statement and exit from the switch statement
      break;
    case 2:
      break;
    default:
*/

//replacing else-if chains :

  const number = 3;
  if (number == 0) {
    print("Zero");
  } else if (number == 1) {
    print("One");
  } else if (number == 2) {
    print("Two");
  } else if (number == 3) {
    print("Three");
  } else if (number == 4) {
    print("Four");
  } else {
    print("Something else");
  }
// Above given print : Three

  // rewrire upper code in switch statement
  const number1 = 3;
  switch (number1) {
    case 1:
      print("One");
      break;
    case 2:
      print("Two");
      break;
    case 3:
      print("Three");
      break;
    case 4:
      print("Four");
      break;
    default:
      print("Something else");
  }

// in dart, switch statements don't support ranges like number > 5. only == equality checking is allowed. if your condition involve ranges,then you should use if statements.
// switching on string
  const weather = 'cloudy';
  switch (weather) {
    case 'sunny':
      print('Put on sunscreen.');
      break;
    case 'snowy':
      print('Get your skis.');
      break;
    case 'cloudy':
    case 'rainy':
      print('Bring an umbrella.');
      break;
    default:
      print("I'm not familiar with that weather.");
  }

// here cloudly case was empty with no break statements .Therefore,the code "falls through" to the "rainy" case. this means that is they

*/

// Enumerated types :

// Enumerated types are also known as enums, play especially well with switch statement

const weather1 = "i like turtles";
/* That’s what the default case was there for — to catch all the
   weird stuff that gets through. Wouldn’t it be nice to make
   weird stuff impossible, though? That’s where enums come
   in. */
// enum define our different kinds of weather.

// Create the enum as follows, placing it outside of the main function:

// enum Weather {
//   sunny,
//   snowy,
//   cloudy,
//   rainy.
// }

// Naming enum
// when we write enum name with an intial capital letter,the value of an enum should use LowerCamelCase unless you have a special raeson to do otherwise

// switching on enum
  // const WeatherToday = Weather.cloudy;
  // switch (WeatherToday) {
  //   case Weather.sunny:
  //     print("Put on sunscreen");
  //     break;
  //   case Weather.snowy:
  //     print("get your skills");
  //     break;
  //   case Weather.cloudy:
  //   case Weather.rainy:
  //     print("bring an umbrella");
  //     break;
  // }

// Enum values and indexes  :

// print(weatherToday);
// print : Weather.cloudy

// Unlike some languages, a Dart enum isn’t an integer. However, you can get the index, or ordinal placement, of a
// value in the enum like so :

// final index = weatherToday.index;

// Since cloudy is the third value in the enum, the zero-based index is 2.

// Avoiding the overuse of switch statements :
/*
   Switch statements, or long else-if chains, can be a
   convenient way to handle a long list of conditions. If you’re
   a beginning programmer, go ahead and use them; they’re
   easy to use and understand.
   However, if you’re an intermediate programmer and still
   find yourself using switch statements a lot, there’s a good
   chance you could replace some of them with more
   advanced programming techniques that will make your
   code easier to maintain. If you’re interested, do a webs and
   read a few articles about it.

*/

}
