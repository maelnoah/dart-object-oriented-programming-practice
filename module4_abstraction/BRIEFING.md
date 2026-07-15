# Module 4: Abstraction

## What is Abstraction?

Abstraction means **defining a contract (interface) without providing full implementation**.

Think of a restaurant:
- You order food (the contract)
- You don't care HOW the chef cooks it (the implementation)
- The menu is the abstraction; the kitchen is hidden

## Why Do We Need It?

1. **Force Implementation**: Require subclasses to implement critical methods
2. **Consistency**: Ensure all subclasses have the same methods
3. **Flexibility**: Define "what", let subclasses define "how"
4. **Hide Complexity**: Users interact with simple interface, ignore details

## How Does It Work in Dart?

### Regular Class (Concrete)
Can be instantiated:
```dart
var animal = Animal();  // ✓ OK
```

### Abstract Class
Cannot be instantiated, forces subclasses to implement methods:
```dart
abstract class Animal {
  void makeSound();  // Abstract method - no body
}

var animal = Animal();  // ✗ ERROR!
```

### Abstract Method
Must be implemented by child class:
```dart
abstract class Shape {
  double area();  // Child MUST implement this
}

class Circle extends Shape {
  @override
  double area() => 3.14 * r * r;  // Must implement
}
```

### Concrete Method in Abstract Class
Can have real code too:
```dart
abstract class Animal {
  void sleep() {
    print('Sleeping...');  // Has implementation
  }

  void makeSound();  // No implementation
}
```

## Difference: Abstract vs Concrete Classes

| Aspect | Concrete | Abstract |
|--------|----------|----------|
| Can instantiate? | Yes | No |
| Can have methods with code? | Yes | Yes |
| Can have abstract methods? | No | Yes |
| Purpose | Real object | Blueprint/contract |

## Example

```dart
// Abstract: You can't make a generic "Animal"
abstract class Animal {
  void makeSound();  // This MUST be implemented
  void eat() {       // This has default behavior
    print('Eating...');
  }
}

// Concrete: You CAN make a Dog
class Dog extends Animal {
  @override
  void makeSound() {
    print('Woof!');  // Must implement abstract method
  }
  // eat() is inherited from Animal
}

var dog = Dog();      // ✓ OK
var animal = Animal(); // ✗ ERROR - can't instantiate abstract
```

## The Pattern

```
Abstract Class (Animal)
    |
    ├─ Abstract method: makeSound()
    ├─ Concrete method: eat()
    |
    Child Classes (Dog, Cat, Bird)
    └─ Must implement: makeSound()
    └─ Inherits: eat()
```

## Key Concepts

### abstract class
Mark a class as abstract:
```dart
abstract class Shape {
  // ...
}
```

### Abstract Method
Method with no body in abstract class:
```dart
double area();  // No curly braces, no body
```

### @override
Mark that you're implementing an abstract method:
```dart
@override
double area() => 10.0;
```

### Concrete vs Abstract Methods
```dart
abstract class Animal {
  void makeSound();              // Abstract (no body)
  void sleep() { print('...'); } // Concrete (has body)
}
```

---

## Why NOT Just Use Inheritance?

```dart
// ✗ With inheritance, you CAN instantiate parent:
class Animal { }
var generic = Animal();  // Oops, generic animal!

// ✓ With abstraction, you CAN'T:
abstract class Animal { }
var generic = Animal();  // ERROR - good!
```

Abstraction FORCES subclasses to exist and implement methods.

---

## Key Takeaway

**Abstraction = Define a contract that subclasses MUST fulfill**

You say "every shape must have an area()", but you don't say HOW.

Next: Read `concept_examples.dart` and run it.
