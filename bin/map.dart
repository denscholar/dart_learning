import 'dart:io';

void main(List<String> args) {
  // const info = {
  //   'fname': 'John',
  //   'lname': 'Doe',
  //   'address': {
  //     "city": "ikorodu",
  //     "country": "Nigeria",
  //   }
  // };

  // for (var element in info.entries) {
  //     print("${element.key} : ${element.value}");    
  // }


  stdout.write('Enter your name: ');
  String? name = stdin.readLineSync();

  print(name);
}


