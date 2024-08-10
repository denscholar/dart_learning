void main(List<String> args) {
  String name = "Peter";
  describe(name);
}

void describe<T>(T name) {
  switch (name) {
    case "Dennis":
      print("This is Dennis");
      break;

    case "Peter":
      print("this is Peter");
      break;

    case "John":
      print("this is Peter");
      break;

    default:
  }
}
