# Module 2: Inheritance

## What is Inheritance?

Inheritance means **one class can extend another**, inheriting its fields and methods.

Think of vehicles:
- All vehicles have: brand, speed, accelerate(), brake()
- But a Car is a Vehicle
- And a Truck is also a Vehicle
- So instead of copying code, Car and Truck can INHERIT from Vehicle

## Why Do We Need It?

1. **Code Reuse**: Write common code once, reuse it everywhere
2. **Hierarchy**: Model real-world relationships (Animal → Dog, Cat, etc.)
3. **Less Duplication**: DRY principle (Don't Repeat Yourself)
4. **Extension**: Add specialized behavior on top of common behavior

## How Does It Work in Dart?

### The Parent Class (Base Class / Superclass)
```dart
class Vehicle {
  String brand;
  int speed = 0;
  
  Vehicle(this.brand);
  
  void accelerate() {
    speed += 10;
    print('$brand is now going $speed km/h');
  }
}
```

### The Child Class (Derived Class / Subclass)
```dart
class Car extends Vehicle {
  int numDoors;
  
  // Constructor calls parent constructor with super()
  Car(String brand, this.numDoors) : super(brand);
  
  // Inherited: accelerate(), brand, speed
  // New: numDoors
}
```

### Calling Parent Constructor
Use `super()` in the child's constructor:
```dart
Car('Toyota', 4) : super('Toyota')  // super() calls Vehicle('Toyota')
```

### Accessing Parent Behavior
Use `super.methodName()`:
```dart
@override
void accelerate() {
  super.accelerate();  // Do parent's work
  print('...and the AC started!');  // Add new behavior
}
```

## Hierarchy Example

```
        Vehicle
        /  |  \
      Car Truck Motorcycle
```

All inherit Vehicle's fields/methods, but add their own.

## Key Concepts

### extends
Create a parent-child relationship where child INHERITS everything:
```dart
class Car extends Vehicle { }
```

### super()
Call the parent's constructor:
```dart
Car(String brand, int doors) : super(brand)
```

### @override
Mark a method you're replacing in the child class:
```dart
@override
void accelerate() { ... }
```

---

## The Pattern

```
Parent Class (Vehicle)
    ↓
    Stores common: brand, speed
    Provides: accelerate()
    ↓
Child Class (Car)
    Inherits: brand, speed, accelerate()
    Adds: numDoors, carWash()
```

---

## Key Takeaway

**Inheritance = Reuse common code by extending a parent class**

Don't write the same code twice. Make a parent, let children build on it.

Next: Read `concept_examples.dart` and run it.
