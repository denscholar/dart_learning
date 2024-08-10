late String name;
void main(List<String> args) {
  /// late variables are initialized when they are first used

  // try {
  //   print(name);
  // } catch (e) {
  //   print(e);
  // }

  // name = 'Dennis';
  // print(name);

  // print('print before');
  // String name = provideName();
  // print('After');

  // late final bool isTeenager;
  // const age = 12;
  // if (age >= 13 && age <= 19) {
  //   isTeenager = true;
  // } else if (age < 13) {
  //   isTeenager = false;
  // }

  // try {
  //   isTeenager = false;
  //   print('isTeenager = $isTeenager');
  // } catch (e) {
  //   print(e);
  // }

  // print('late fulname is being initialized');
  // late final fulname = getFullName();
  // print('after');
  // print(fulname);
}

// String provideName(){
//   print('function is called');
//   return "denscholar";
// }

String getFullName() {
  print("getfullName() is called");
  return "John doe";
}
