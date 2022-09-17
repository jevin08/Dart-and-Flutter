import 'package:lab3_tutorial2/lab3_tutorial2.dart' as lab3_tutorial2;
import 'dart:math';

String compliment(int number){
  return '$number is very nice number.';
}

// Dart is optionally-typed language.
// It is possible to omit the types from your function declaration.
compliment1(int number){
  return '$number is very nice number.';
}

void helloPersonAndPet(String person, String pet) {
  print('Hello, $person, and your furry friend, $pet!');
}

String fullName(String first, String last, [String? title]) {
  if (title != null) {
    return '$title $first $last';
  } else {
    return '$first $last';
  } 
}

bool withinTolerance(int value, [int min = 0, int max = 10]) {
  return min <= value && value <= max;
}

bool withinTolerance1(int value, {int min = 0, int max = 10}) {
  return min <= value && value <= max;
}

bool withinTolerance2({required int value, int min = 0, int max = 10,}) {
  return min <= value && value <= max;
}

// Function having side effect
void helloWSideEffect() {
  print('Hello!');
}

String helloWOSideEffect() {
  return "Hello!";
}

// Mini-Exercises
String youAreWonderful(String name, int numberPeople){
  return "You are wonderful, $name. $numberPeople people think so.";
}

// Returning Function from Function
Function namedFunction() { 
  return () { print('hello'); };
}

Function applyMultiplier(num multiplier) {
  return (num value) {
    return value * multiplier;
  };
}

Function countingFunction() { 
  var counter = 0;
  final incrementCounter = () {
    counter += 1;
    return counter;
  };
  return incrementCounter;
}

// Arrow Functions
int add(int a, int b) => a + b;

// Refactoring Example-2
Function applyMultiplier1(num multiplier) {
  return (num value) => value * multiplier;
}

int repeatTask(int times, int input, Function task){
  while(times-- != 0){
    input = task(input);
  }
  return input;
}

void main(List<String> arguments) {
  /*
  // Functions
  const input = 12;
  // single parameter function
  final output = compliment(input);
  print(output);    // 12 is very nice number.
  */

  /*
  // multiple parameter function
  helloPersonAndPet('Fluffy', 'Chris');     // Hello, Fluffy, and your furry friend, Chris!
  */

  /*
  // Making parameters optional
  print(fullName('Ray', 'Wenderlich'));                   // Ray Wenderlich
  print(fullName('Albert', 'Einstein', 'Professor'));     // Professor Albert Einstein
  */

  /*
  // Providing default values
  print(withinTolerance(5));           // true
  print(withinTolerance(15));          // false
  print(withinTolerance(9, 7, 11));    // true
  print(withinTolerance(9, 7));        // true
  */

  /*
  // Naming parameters
  print(withinTolerance1(9, min: 7, max: 11)); // true
  print(withinTolerance1(9, min: 7, max: 11)); // true
  print(withinTolerance1(9, max: 11, min: 7)); // true

  print(withinTolerance1(5));            // true
  print(withinTolerance1(15));           // false
  print(withinTolerance1(9, min: 7));    // false
  print(withinTolerance1(15, max: 20));  // true

  // Error: Too many positional arguments: 1 expected, but 3 found.
  // print(withinTolerance1(9, 7, 11));

  // Error: Too few positional arguments: 1 required, 0 given.
  // print(withinTolerance1());
  */

  /*
  // Making named parameters required
  // Error: The named parameter 'value' is required, but there's no corresponding argument.
  // print(withinTolerance2());
  */

  /*
  // Anonymous Functions
  int number = 4;
  String greeting = 'hello';
  bool isHungry = true;
  Function multiply = (int a, int b) {
    return a * b;
  };

  // Error: Function expressions can't be named.
  // Function myFunction = int multiply(int a, int b){
  //   return a * b;
  // };

  print(multiply(2, 3));      // 6
  
  final triple = applyMultiplier(3);
  print(triple(6));         // 18
  print(triple(14.0));      // 42.0
  */

  /*
  // Anonymous fuction in forEach Loop
  const numbers = [1, 2, 3];
  numbers.forEach((number) {
    final trippled  = number*3;
    print(trippled);
  });
  // 3 6 9
  */

  /*
  // Closure
  final counter1 = countingFunction();
  final counter2 = countingFunction();

  print(counter1()); // 1
  print(counter2()); // 1
  print(counter1()); // 2
  print(counter1()); // 3
  print(counter2()); // 2
  */

  /*
  // Mini-Exercises
  Function wonderful = (String name){
    return "You are wonderful, $name.";
  };

  const people = ['Chris', 'Tiffani', 'Pablo'];
  people.forEach((person) { print(wonderful(person)); });
  // You are wonderful, Chris.
  // You are wonderful, Tiffani.
  // You are wonderful, Pablo.
  */
  
  /*
  // Arrow Functions
  final multiply = (int a, int b) => a * b;
  print(multiply(2, 3)); // 6
  */

  /*
  // Refactoring Example-3
  const numbers = [1, 2, 3];
  numbers.forEach((number) => print(number * 3));
  */

  /*
  // Mini-Exercises
  const people = ['Chris', 'Tiffani', 'Pablo'];
  people.forEach((person) => print("You are wonderful, $person."));
  */

  /*
  // Challenges
  // Challenge-1: Prime Time
  Function isPrime = (n) {
    for(int i = 2; i <= sqrt(n); i++){
      if(n%i == 0)
        return false;
    }
    return true;
  };
  print(isPrime(19));   // true
  print(isPrime(20));   // false

  // Challenge-2: Can you repeat that?
  // Function repeatTask implemented above...
  print(repeatTask(4, 2, (n) { return n*n; }));

  // Challenge-3: Dart and Arrows
  print(repeatTask(4, 2, (n) => n*n ));
  */
}