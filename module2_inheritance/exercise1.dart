// EXERCISE 1: Animal Hierarchy (Beginner)
// Build a simple parent-child inheritance

// REQUIREMENTS:
// 1. Parent class: Animal
//    - Fields: name (String), age (int)
//    - Constructor: Animal(name, age)
//    - Method: eat() → print "$name is eating"
//    - Method: sleep() → print "$name is sleeping"
//    - Method: displayInfo() → print "Name: $name, Age: $age"
//
// 2. Child class: Dog extends Animal
//    - New field: breed (String)
//    - Constructor: Dog(name, age, breed) calls super(name, age)
//    - Override displayInfo():
//      * Call super.displayInfo()
//      * Then print "Breed: $breed"
//    - New method: bark() → print "$name barks: Woof! Woof!"
//
// 3. Child class: Cat extends Animal
//    - New field: color (String)
//    - Constructor: Cat(name, age, color) calls super(name, age)
//    - Override displayInfo():
//      * Call super.displayInfo()
//      * Then print "Color: $color"
//    - New method: meow() → print "$name meows: Meow!"

// STARTER CODE:
// abstract class Animal {
//   // TODO: add fields, constructor, methods
// }
//
// class Dog extends Animal {
//   // TODO: add breed field, constructor, override displayInfo, add bark()
// }
//
// class Cat extends Animal {
//   // TODO: add color field, constructor, override displayInfo, add meow()
// }
//
// void main() {
//   var dog = Dog('Buddy', 3, 'Labrador');
//   var cat = Cat('Whiskers', 2, 'Orange');
//
//   dog.displayInfo();
//   dog.eat();
//   dog.bark();
//
//   print('');
//
//   cat.displayInfo();
//   cat.sleep();
//   cat.meow();
// }

// EXPECTED OUTPUT:
// Name: Buddy, Age: 3
// Breed: Labrador
// Buddy is eating
// Buddy barks: Woof! Woof!
//
// Name: Whiskers, Age: 2
// Color: Orange
// Whiskers is sleeping
// Whiskers meows: Meow!
