
class Person {
  String name;
  int age;

  Person({required this.name, required this.age});

  static Map<String, dynamic> getInfo(Person person) {
    return {'name': person.name, 'age': person.age};
  }

  static bool isAdult(Person person) {
    return person.age >= 18;
  }
}

void main() {
  Person person = Person(name: 'John', age: 17);
  Map<String, dynamic> info = Person.getInfo(person);
  print(info);
  
  bool isAdult = Person.isAdult(person);
  print(isAdult);
}