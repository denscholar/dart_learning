
void main(List<String> args) {

  // List<String?> name=  ['peter', 'Dennis'];

  // dynamic fnames = name.split(" ");
  // fnames.add(null);
  // print(fnames);


  // print(fnames);

  // fnames.any((e) => e == null) ? null : "hello";

  // print(fnames.join(' '));
  // String? name;
  // print(name);

  // String? lastName;

  // print(lastName ?? "Peter Johns");

  // print(lastName);

  // String? getFirstName() {
  //   return null;
  // }

  // String getFullName() {
  //   return 'Dennis Akagha';
  // }

  // final fullName = getFirstName() ?? getFullName();
  // print(fullName);

  // final someName = getFullName();
  // someName.describe();


  print(getFullName("Dennis", null));
}

// extension Describe on Object? {
//   void describe() {
//     if (this == null) {
//       print("this object is null");
//     } else {
//       print("$runtimeType: $this");
//     }
//   }
// }


// Advance example
// String getFullName(
//   String? firstName,
//   String? lastName,
// ) => withAll([firstName, lastName], (names) => names.join(' ')) ??
//       'Empty';

// T? withAll<T>(
//   List<T?> optionals,
//   T Function(List<T>) callback,
// ) {
//   return optionals.any((e) => e == null) ? null : callback(optionals.cast<T>());
// }


 