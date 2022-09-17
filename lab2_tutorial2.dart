import 'dart:developer';
import 'dart:math';

void main(List<String> args) {

  /* ~~~~~~~~~~~~~~~~~~   Comment Task         ~~~~~~~~~~~~~~~~~~~~ */
  
  // This is a single line code comment. It is not executed.
  // If we enter from last next line will not aprireare as comment if only one line is commented. 

  ///  This is a single line documentary comment. It is also not executed.
  /// If we enter from last next line will aprireare as comment. even single line is there.
  
  /*
    This is a multi-line(block) code comment.
  */

  /*
    /*
      This is nested multi-line code comment.
    */
  */

  /**
   * @author: Jevin Sutariya
   * This is multi-line documentary comment.
   */
  /**
   * /**
   *  Nested multi-line block comment.
   *  */
   */

/*
  /* ~~~~~~~~~~~~~~~~~~~~~~~     print()      ~~~~~~~~~~~~~~~~~~~~~~~~ */
  
  // Below line write on console and put's it cursor on next line;
  print("Hello World!");
  /*
          ______________________________________ 
  Output :|Hello World!
          |_
          |
  */
  // how to write variables inside string (or with string) in dart?
  String college = "DDIT"; 
  print("Our college is ${college}");
*/


/*

  /* ~~~~~~~~~~~~~~~~~~~~~~~     Statements and expressions      ~~~~~~~~~~~~~~~~~~~~~~~~ */

  /**
   * A statement is a command, something you tell the computer to do.
   * In Dart, all simple statements end with a semicolon.
   */
  // Example : 
  print('Hello, Dart!');
  

  /// if is example of complex statment.
  if(DateTime.july==DateTime.now().month){
    print("Current month is july..");
  }

  /// Unlike a statement, an doesn’t do something; it is something.
  /// That is, an expression is a value, or is something that can be calculated as a value.

  3 + 2;

  /// Arithmetic operations
  print(2 + 7);
  print(6 - 3);
  print(2 * 4);
  print(21 / 7);

  // by default standard division,
  print(22 / 7);
  // integer division,
  print(22 ~/ 7);

  // Euclidean modulo operation
  print(28%10);
  
  /// Precedence of division or multiplication is higher then addition and subtraction.
  350 / (5 + 2);//50
  350 / 5 + 2;//72

*/


/*

/* ~~~~~~~~~~~~~~~~~~~~~~~     Math functions      ~~~~~~~~~~~~~~~~~~~~~~~~  */

  /// need to => import 'dart:math';
  // sin(radians) => (degree * PI)/180
  print(sin(45 * pi / 180));//0.7071067811865475

  // cos(radians) => (degree * PI)/180
  print(cos(135 * pi / 180));//-0.7071067811865475

  print(sqrt(8));//2.8284271247461903

  print(max(sqrt(3), pi));//3.141592653589793

  // Exercise : Now print the value of 1 overthe square root of 2 in Dart.
  // Confirm that it equals the sine of 45°.
  if(1 / sqrt(2)==sin(45*pi/180))
    print("Both are same!");

*/

/*

  /**
  * Identifiers can include both, characters and digits. However, the identifier cannot begin with a digit.
  • Identifiers cannot include special symbols except for underscore (_) or a dollar sign ($).
  • Identifiers cannot be keywords.
  • They must be unique.
  • Identifiers are case-sensitive.
  • Identifiers cannot contain spaces.
  */


  /**
   * In Dart, everything is an object. Although int and double look like primitives, they’re subclasses of num,
   *  which is a subclass of Object.
   */

  8.isEven;//true
  3.148465.round();//3
  print(9.bitLength);//4
  print(11.runtimeType);//int
  print(3.156.runtimeType);//double

  /// Type safty 
  // int myInteger = 10;
  // myInteger = 3.14159; // Error: A value of type 'double' can't be assigned to a variable of type 'int'.

  // The num type can be either an int or a double.
  num number;
  number = 5; // Ok
  number = 8.54; // Ok
  // number = "joe";// Error

  /// This lets you assign any data type you like to your variable,
  ///  and the compiler won’t warn you about anything.
  dynamic dynamic_var = 6; // Ok
  dynamic_var = 7.94; // Ok
  dynamic_var = "jevin";// Ok

  // The var keyword says to Dart, Use whatevertype is appropriate.
  var variable;
  print(variable.runtimeType);//Null
  variable = 10;
  print(variable.runtimeType);//int
  variable = 8.5;
  print(variable.runtimeType);//double

  var variable1 = 10;
  print(variable.runtimeType);//int
  //variable1 = 8.9;// Error: A value of type 'double' can't be assigned to a variable of type 'int'.

  /** What is diffrence between dynamic and var?
   * If var is initailized by value then it stick to that type. If not initailized then it work as dynamic.
   * In dynamic any type of value(Object) can be assigned to variable.
   */

*/


/*
/// Dart has two different types of “variables” whose values never change(immutabe data).
/// const(comile time constant) & final(run time constant).
/// const is used when value of it's instance is defined at compile time and it does't changes.
/// Where as final can use to store function value or some input value at runtime.
const PI = 3.14; // fine
// const date = DateTime.now().day;//Error: Cannot invoke a non-'const' constructor where a const expression is expected.

final PI2 = 3.14;
final date = DateTime.now().day;
print(date);
// date = 11;//Error: Can't assign to the final variable
*/


/*
// Mini Exercises
// 1. Declared constant of type int called myAge and set it to your age.
  const myAge = 19;
  final myMaxAgeThisYear = DateTime.now().year-2002;
  print(myAge);
  print(myMaxAgeThisYear);

// 2. Declare a variable of type double called averageAge. Initially, set the variable to your own age. Then, set it to the average of your age and your best friend’s age.

double averageAge = 19;
averageAge = (averageAge + 18)/2;
print(averageAge);

// 3. Create a constant called testNumber and initialize it with whatever integer you’d like. Next, create another constant called evenOdd and set it equal to testNumber modulo 2. Now change testNumber to various numbers.What do you notice about evenOdd?
const testNumber = 7;
const evenOdd = testNumber % 2;
print(evenOdd);
// => if even number then evenOdd becomes 0 and if odd number is there then 1. Modulo(arithematic operations) supports by const.
*/


/*

var counter = 0;
//Short-hand addtion operation.
counter += 1;//1
//Short-hand subtraction operation.
counter -= 1;//0

double myValue = 10;
//Short-hand multiplication operation.
myValue *= 3; // same as myValue = myValue * 3;
// myValue = 30.0;

//Short-hand divison operation.
myValue /= 2;//15.0



// If you want only increament or deacrement by one then you can use the -- or ++ operators.

// Post-increament -> first assign and then increment.
num val = counter++;//1
counter--;//0
print(val);//0

// Pre-increament -> first increment then assign;
val = ++counter;//1
--counter;//0
print(val);//1

*/


/* ~~~~~~~~~~~~~~ Challanges ~~~~~~~~~~~~~~~ */

/*
//  Challenge 1: Variables
//  -> Declare a constant int called myAge and set it equal to your age. Also declare an int variable called dogs and set that equal to the number of dogs you own. Then imagine you bought a new puppy and increment the dogs variable by one. 
const myAge = 19;//final
int dogs = 0;//var, dynamic, num
dogs++;
print("I am age of ${myAge} and i have ${dogs} dog(s).");
*/

/*
// Challenge 2: Make it compile
// Given the following code:
int age = 16; // num, var, dynamic
print(age);
age = 30;
print(age);
*/

/*
// Challenge 3: Compute the answer
// Consider the following code:
const x = 46;
const y = 10;
// Work out what each answer equals when you add the following lines of code to the code above:
const answer1 = (x * 100) + y; // 4700
const answer2 = (x * 100) + (y * 100);//5600
const answer3 = (x * 100) + (y / 10);//4601.0
print(answer1);
print(answer2);
print(answer3);
*/

/*
// Challenge 4: Average rating
// Declare three constants called rating1, rating2 and rating3 of type double and assign each a value. Calculate the average of the three and store the result in a constant named averageRating.
const rating1 = 4.0, rating2 = 3.5, rating3 = 4.5;
const averageRating = (rating1 + rating2 + rating3)/3;
print(averageRating);
*/

/*
// Challenge 5: Quadratic equations
// A quadratic equation is something of the form 
// a⋅x^2 + b⋅x + c = 0.
// The values of x which satisfy this can be solved by using the equation
// x = (-b ± sqrt(b^2-4⋅a⋅c))/(2⋅a);
// Declare three constants named a, b and c of type double. Then calculate the two values for x using the equation above (noting that the ± means plus or minus, so one value of x for each). Store the results in constants called root1 and root2 of type double.
const a=1.0, b=5.0, c=6.0;
final root1 = (-b + sqrt(b*b-4*a*c))/(2*a);
final root2 = (-b - sqrt(b*b-4*a*c))/(2*a);
print(root1);//-2.0
print(root2);//-3.0
*/

}