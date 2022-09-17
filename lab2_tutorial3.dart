import 'dart:ffi';
import 'dart:math';

import 'package:lab2_tutorial3/lab2_tutorial3.dart' as lab2_tutorial3;

void main(List<String> arguments) {

/*
  // Annotating variables explicitly
  // writing the data type before the variable name.
  int myInt = 5;
  double myDouble = 5.2;

  const int myInteger1 = 10; // same as const myInteger1 = 10;
  const double myDouble1 = 3.14;// same as const myDouble1 = 3.14;

  // myInt = myDouble;//Error

  /// impicit type conversion
  // myInt = (int) myDouble; // Not allowed

  /// Explicit type conversion
  myInt = myDouble.toInt();//Fine;

  const hourlyRate = 19.5;
  const hoursWorked = 10;
  // const totalCost = hourlyRate * hoursWorked;//double

  // Error: Method invocation not a const expression
  // const totalCost = (hourlyRate * hoursWorked).toInt();//int

  final totalCost = (hourlyRate * hoursWorked).toInt();//int

  // 3 as constant double
  // 3 ways
    // 1st way
    const wantDouble1 = 3.0;
    //2nd way
    final wantDouble2 = 3.toDouble();
    // 3rd way
    const double wantDouble3 = 3;


  num someNumber = 3;
  // print(someNumber.isEven);// Error: The getter 'isEven' isn't defined for the class 'num'.
  print((someNumber as int).isEven);//Fine
  /// A variable of some general supertype, but you need functionality that is only available in a subtype.
  /// If you’re sure that the value of the variable actually is the subtype you need, then you can use the as keyword to change the type. This is known as type casting.
  
// num someNumber = 3;
// final someDouble = someNumber as double;
// _CastError (type 'int' is not a subtype of type 'double' in type cast)
// print(someNumber.isEven);

// If you do need to convert an int to a double atruntime, use the toDouble method that you saw earlier:

final someDouble = someNumber.toDouble();

// Mini-exercises :

// 1. Create a constant called age1 and set it equal to 42.
// Create another constant called age2 and set it equal to
// 21. Check that the type for both constants has been
// inferred correctly as int by hovering your mouse pointer
// over the variable names in VS Code.
// Ans1 :
// const age1 = 42;    // int
// const age2 = 21;    // int

// 2. Create a constant called averageAge and set it equal to
// the average of age1 and age2 using the operation (age1
// + age2) / 2. Hover your mouse pointer over
// averageAge to check the type. Then check the result of
// averageAge. Why is it a double if the components are
// all int?
// Ans2 :
// const averageAge = ( age1 + age2 )/2;   // double
*/

/*
// Strings :

// Print Hello, Dart! 
print('Hello, Dart!');

// You can extract that same string as a named variable:
var greet = 'Hello, Dart!';
print(greet);

var greeting = 'Hello, Dart!';
// you completely discarded the string 'Hello, Dart!'and replaced it with a whole new string whose value was 'Hello, Flutter!'.
greeting = 'Hello, Flutter!';
print(greeting);

const letter = 'a';
print(letter);// a

// Single-quotes vs. double-quotes : 

var a = 'I like cats';// I like cats
print(a);
var b = "I like cats";// I like cats
print(b);

// You might want to use double-quotes, though, if your string includes any apostrophes.
var c = "my cat's food";
print(c);

// Otherwise you would need to use the backslash \
var d ='my cat\'s food';
print(d);

// Concatenation :

var message = 'Hello' + ' my name is ';
const name = 'Ray';
message += name;
print(message);
// 'Hello my name is Ray'

// If you find yourself doing a lot of concatenation, you should use a string buffer, which is more efficient.
final message1 = StringBuffer();
message1.write('Hello');
message1.write(' my name is ');
message1.write('Ray');
message1.toString();
print(message1);
// this above statement print : Hello my name is Ray

// Interpolation :

const introduction = 'Hello my name is $name';
print(name);// Hello my name is Ray

// The syntax works in the same way to build a string from other data types such as numbers:

const oneThird = 1 / 3;
const sentence = 'One third is $oneThird.';
print(sentence);// One third is 0.3333333333333333.

final sentence1 = 'One third is ${oneThird.toStringAsFixed(3)}';
print(sentence1);// One third is 0.333


// Multi-line strings :

// You can support multi-line text like so:
const bigString = '''
You can have a string
that contains multiple
lines
by
doing this.''';
print(bigString);

// This above things print :
// You can have a string
// that contains multiple
// lines
// by
// doing this.

const oneLine = 'This is only '
'a single '
'line '
'at runtime.';
print(oneLine);// This is only a single line at runtime.


const oneLine1 = 'This is only ' +
'a single ' +
'line ' +
'at runtime.';
print(oneLine1);// This is only a single line at runtime.


// Print : 
// This is
// two lines.
const twoLines = 'This is\ntwo lines.';
print(twoLines);

// print : My name \n is $name.
const rawString = r'My name \n is $name.';
print(rawString);

*/

/*

// Mini-exercises :

// 1. Create a string constant called firstName and initialize it to your first name. Also create a string constant called lastName and initialize it to your last name.
// Ans1 :
const firstName = "Jevin";
const lastName = "Sutariya";

// 2. Create a string constant called fullName by adding the firstName and lastName constants together, separated by a space.
// Ans2 :
// const firstName = "Jevin";
// const lastName = "Sutariya";
const fullName = firstName + " " + lastName;

// 3. Using interpolation, create a string constant called myDetails that uses the fullName constant to create a string introducing yourself. For example, Ray Wenderlich’s string would read: Hello, my name is Ray Wenderlich.
// Ans3 :
// const firstName = "Jevin";
// const lastName = "Sutariya";
const myDetails = "Hello, my name is $firstName $lastName."; //Hello, my name is Jevin Sutariya.

*/


/*


// Object and dynamic types :

// Here is an example in JavaScript
dynamic myVariable = 42;//var in javascript
myVariable = 123.23;
print(myVariable);

var answer = myVariable * 3; // runtime error

// If you try to do the following in Dart:

// var myVariable = 42;
// myVariable = 'hello'; // compile-time error

dynamic myVariable1 = 42;
myVariable = 'hello'; // OK

var myVariable2; // defaults to dynamic
myVariable = 42; // OK
myVariable = 'hello'; // OK
print(myVariable);// hello

// If you need to explicitly say that any type is allowed, you should consider using the Object? type.

Object? myVariable3 = 42;
myVariable = 'hello'; // OK
print(myVariable);// hello

*/


/*
// Challenges :

// Challenge 1: Teacher’s grading
// You’re a teacher, and in your class, attendance is worth 20% of the grade, the homework is worth 30% and the exam is worth 50%. Your student got 90 points for her attendance, 80 points for her homework and 94 points on her exam. Calculate her grade as an integer percentage rounded down.
// Ans1 :
final grade = ((90 * 0.20) + (80 * 0.30) + (94 * 0.50)).toInt();
print(grade);   // 89

// Challenge 2: Find the error

// What is wrong with the following code?
// const name = 'Ray';
// name += ' Wenderlich';
// Ans2 : We can't change the value of const variable after declaring it. 

// Challenge 3: What type?
// What’s the type of value?
const value = 10 / 2;// Double

// Challenge 6: In summary
// What is the value of the constant named summary?
const number = 10;
const multiplier = 5;
final summary = '$number* $multiplier = ${number * multiplier}';

print(summary); // 10 * 5 = 50
*/

}
