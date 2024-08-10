void main(List<String> args) {
  List<Friend> myFriends = [
    Friend(name: 'Dennis', age: 25),
    Friend(name: 'Kelly', age: 35),
    Friend(name: 'Dolapo', age: 55),
    Friend(name: 'James', age: 55),
  ];
}

class Friend {
  String name;
  int age;

  Friend({required this.name, required this.age});
}
