void main(List<String> args) {
  int age = 50;
  String name = 'Dennis';

  // printHello(
  //   age: age,
  //   name: name,
  // );

  // print(minus(100, 30));

  print(performOperation(
    10,
    20,
    minus,
  ));
  print(performOperation(
    10,
    20,
    add,
  ));
  print(
    performOperation(
      10,
      20,
      multiply,
    ),
  );
}
// names parameeters
// void printHello({String? name, int? age}) {
//   print("$name is $age years old.");
// }

// named parameter
// void printHello({String? name}) {
//   print("$name is his name.");
// }

// named required
// void printHello({required String name, required age}) {
//   if (age != null) {
//     final in2years = age + 2;
//     print("In 2 years, you will be $in2years years old");
//   }else{
//     print("You did not tell me your age");
//   }
// }

// optional positional parameters
// void printHello(int? age, [String? name]) {
//   if (age != null) {
//     final in2years = age + 2;
//     print("In 2 years, you will be $in2years years old");
//   } else {
//     print("You did not tell me your age");
//   }
// }

// name positional parameter
// void printHello(String name, {int? age}) {
//   if (age != null) {
//     final in2years = age + 2;
//     print("In 2 years, you will be $in2years years old");
//   } else {
//     print("You did not tell me your age");
//   }
// }

// functioning returnng another function
int Function() doSommething(int lhs, int rhs) =>
    () => lhs - rhs;

// arrow function

int minus([int lhs = 10, int rhs = 5]) => lhs - rhs;
int add([int lhs = 10, int rhs = 5]) => lhs + rhs;
int multiply([int lhs = 10, int rhs = 5]) => lhs * rhs;

/// first class functions =>
/// this is a function that can be passed into another function

int performOperation(int a, int b, int Function(int b, int d) operation) {
  return operation(a, b);
}
