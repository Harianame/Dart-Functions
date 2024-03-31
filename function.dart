import 'dart:io';

// Define an interface
abstract class Animal {
  void makeSound();
}

// Base class
class LivingThing {
  void breathe() {
    print('Breathing...');
  }
}

// Subclass demonstrating inheritance
class Mammal extends LivingThing implements Animal {
  @override
  void makeSound() {
    print('Mammal sound');
  }

  // Override a method
  @override
  void breathe() {
    super.breathe(); // Call the superclass method
    print('Mammal breathing...');
  }
}

// Class that implements an interface
class Bird implements Animal {
  @override
  void makeSound() {
    print('Bird sound');
  }
}

// Class initialized with data from a file
class Person {
  late String name;

  Person(this.name);

  void introduce() {
    print('Hello, my name is $name');
  }
}

void main() {
  // Demonstrate inheritance
  var mammal = Mammal();
  mammal.breathe(); // Calling the overridden method
  mammal.makeSound(); // Calling the inherited method

  // Implement an interface
  var bird = Bird();
  bird.makeSound();

  // Initialize an instance with data from a file
  var file = File('data.txt');
  var lines = file.readAsLinesSync();
  var person = Person(lines.first);
  person.introduce();

  // Demonstrate a loop
  print('Loop demonstration:');
  for (int i = 0; i < 5; i++) {
    print('Count: $i');
  }
}
