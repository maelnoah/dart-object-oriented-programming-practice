// Polymorphism Example: Zoo Sounds

class Animal {
  String name;

  Animal(this.name);

  void makeSound() {
    print('$name makes a generic sound');
  }

  void sleep() {
    print('$name is sleeping');
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print('$name barks: Woof! Woof!');
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print('$name meows: Meow...');
  }
}

class Bird extends Animal {
  Bird(String name) : super(name);

  @override
  void makeSound() {
    print('$name chirps: Tweet! Tweet!');
  }
}

class Cow extends Animal {
  Cow(String name) : super(name);

  @override
  void makeSound() {
    print('$name moos: Moooo!');
  }
}

void main() {
  print('=== Polymorphism in Action ===\n');

  // KEY: Store all as Animal references
  // But each one ACTUALLY is a different type
  List<Animal> zoo = [
    Dog('Buddy'),
    Cat('Whiskers'),
    Bird('Tweety'),
    Cow('Bessie'),
  ];

  print('--- Making Sounds (same call, different behaviors) ---');
  for (var animal in zoo) {
    animal.makeSound();  // Polymorphism!
  }

  print('\n--- Sleeping (inherited method works for all) ---');
  for (var animal in zoo) {
    animal.sleep();  // No override = uses parent's version
  }

  print('\n--- What is each animal REALLY? ---');
  for (var animal in zoo) {
    print('$animal is a ${animal.runtimeType}');
  }

  print('\n--- Adding new animal WITHOUT changing the loop ---');
  zoo.add(Dog('Rex'));  // Just add a new Dog
  // The loop above would still work!
}

// CONCEPT CHECKPOINT:
// - List<Animal> stores Dog, Cat, Bird, Cow
// - When we call animal.makeSound(), Dart checks the REAL type
// - Each calls its own overridden version
// - sleep() wasn't overridden, so all use Animal.sleep()
// - Polymorphism = flexibility to add new types later
