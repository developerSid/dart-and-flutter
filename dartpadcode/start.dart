void main() {
  final name = myName();
  final me = new Person("Gary");

  print('My name is $name, ${calculateGreeting()}');
  print(name.length);

  me.printName();
}

String myName() {
  return 'Gary';
}

calculateGreeting() {
  return "Hello!";
}

class Person {
  String firstName;

  Person(this.firstName);

  printName() {
    print(firstName);
  }
}

