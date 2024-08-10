import 'package:collection/collection.dart';

void main(List<String> args) {
  const names = [
    'Peter',
    'Jones',
    'Obioma',
    'Jeremiah',
    'Jones',
    'Obioma',
    'Jeremiah'
  ];

  for (var name in names.reversed) {
    print(name);
  }

  print("-----------contains()----------");

  for (var name in names) {
    if (name.contains('Obioma')) {
      print(name);
    }
  }

  print("---------where(), startWith----------");

  final result = names.where((String name) => name.startsWith('J'));
  for (var re in result) {
    print(re);
  }

  print("---------subscript----------");

  final result2 = names.indexOf('Jeremiah');
  print(result2);

  try {
    print(names[5]);
  } catch (e) {
    print(e);
  }

  print("---------sublist----------");
  names.sublist(0, 4).forEach(print);

  names.forEach(print);

  print("---------mapping a list----------");

  final mappingNames = names.map((name) => name.toUpperCase());
  print(mappingNames);

  final numbers = [1, 2, 3, 4, 5, 20];

  int sumNumber = 0;

  for (var num in numbers) {
    sumNumber += num;
  }

  print(sumNumber);

  print("----------- fold ------------");

  final myResult = names.fold<String>(
      "",
      (previousValue, currentValue) =>
          "$previousValue ${currentValue.toUpperCase()}".toUpperCase());
  print(myResult);

  final newResult = numbers.fold<int>(
      0, (previousValue, currentValue) => previousValue + currentValue);

  print(newResult);

  print("----------- fold 2 ------------");

  List<String> listName = ['Max', 'John', 'Sara', 'Peter'];

  //  String yourName = listName.first;
  //  print(yourName.split(''));

  //  with forEach method
  List<String> letters = [];

  for (var name in listName) {
    letters.add(name.split('').first);
  }
  print(letters.join());

  print("-solving using fold method -");

  final newList =
      listName.fold<String>('', (prev, letters) => prev + letters[0]);

  print(newList);

  print("-----------Example fold 3 ------------");

  //  find the sum of age all friends and print it:

  List<Friend> myFriends = [
    Friend(name: 'Dennis', age: 25),
    Friend(name: 'Kelly', age: 35),
    Friend(name: 'Dolapo', age: 55),
    Friend(name: 'James', age: 55),
  ];

  print("-----------Example map ------------");

  final newMyFriend = myFriends.map((e) => e.age * 2);
  print(newMyFriend);

  print("-----------Example map ------------");

  int sumAge = 0;

  for (var f in myFriends) {
    sumAge += f.age;
  }

  print(sumAge);

  final friendsAge = myFriends.fold(0, (prev, friends) => prev + friends.age);
  print(friendsAge);

  print("----------- SETS ------------");
  // set uses a special operator called the spread operator
  final setNames = {...names};

  if (setNames.contains('John')) {
    print(true);
  } else {
    print(false);
  }

  /// sets works with harshable objects

//  final person1 = Person(name: 'Dennis', age: 10);
//  final person2 = Person(name: 'Dennis', age: 10);

//  print(person1.hashCode);
//  print(person2.hashCode);

//  final persons = {person1, person2};
//  print(persons);

  print("----------- MAPS ------------");

  final info = {
    'name': 'Foo',
    'age': 10,
  };

  print(info.keys);
  print(info.values);
  print(info.containsKey('Foo'));
  info['height'] = 200;
  info.putIfAbsent('address', () => 'Foo');
  print(info);


   print("----------- Iterable------------");

   final iterable = Iterable.generate(20, (i) => i);

   for (var name in iterable.take(5)) {
     print(name);
   }

}

class Friend {
  String name;
  int age;

  Friend({required this.name, required this.age});
}

class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  @override
  String toString() {
    return 'Person: $name, $age';
  }

  @override
  int get hashCode => Object.hash(name, age);
}
