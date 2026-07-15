# Module 0.5: Introduction to Classes & Constructors

## Before Encapsulation, You Need to Understand Classes

You can't learn **encapsulation** without understanding what a **class** is and how **constructors** work.

This module teaches the basics of classes and constructors so Module 1 makes sense.

---

## What is a Class?

A class is a **blueprint for creating objects**.

Think of it like a **cookie cutter**:
- The cookie cutter is the blueprint (class)
- Each cookie you cut out is an object (instance)
- All cookies from one cutter have the same shape, but they're separate objects

```dart
class Car {
  // This is the blueprint
}

var car1 = Car();  // This is an object (instance)
var car2 = Car();  // Another object
```

---

## What Goes Inside a Class?

A class contains:
1. **Fields** — data/properties that each object stores
2. **Methods** — actions/functions that the object can do
3. **Constructor** — special method that creates the object

```dart
class Car {
  // FIELD: data the car stores
  String brand;
  
  // METHOD: what the car can do
  void honk() {
    print('Beep!');
  }
  
  // CONSTRUCTOR: runs when you create a new Car
  Car(this.brand) {
    print('A new $brand car was created!');
  }
}
```

---

## What is a Constructor?

A constructor is a **special method that runs automatically when you create an object**.

It's used to **initialize** (set up) the object's initial state.

```dart
class Person {
  String name;
  int age;
  
  // Constructor: runs when new Person(...) is called
  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }
}

void main() {
  var person = Person('Alice', 25);  // Constructor runs here!
}
```

**Output**: The constructor initialized name='Alice' and age=25

---

## The `this` Keyword

`this` means "this object" — it refers to the object being created.

```dart
class Book {
  String title;
  
  Book(String title) {
    this.title = title;  // this.title = the field, title = the parameter
  }
}
```

---

## Shorthand: `this.fieldName`

Dart lets you skip the assignment and use shorthand:

```dart
// LONG WAY
class Book {
  String title;
  
  Book(String title) {
    this.title = title;
  }
}

// SHORT WAY (same thing!)
class Book {
  String title;
  
  Book(this.title);  // Automatically does: this.title = title
}
```

Both work the same. The shorthand just saves typing.

---

## Step by Step: Creating an Object

```dart
class Dog {
  String name;
  int age;
  
  Dog(this.name, this.age) {
    print('Creating a dog named $name');
  }
  
  void bark() {
    print('$name says: Woof!');
  }
}

void main() {
  // STEP 1: Call the constructor
  var dog = Dog('Buddy', 3);
  
  // STEP 2: Constructor runs
  // Output: "Creating a dog named Buddy"
  
  // STEP 3: Object is created, you can now use it
  dog.bark();  // Output: "Buddy says: Woof!"
}
```

**What happened**:
1. `Dog('Buddy', 3)` called the constructor
2. Constructor set `this.name = 'Buddy'` and `this.age = 3`
3. Constructor's print statement ran
4. Object was fully created and stored in `dog`
5. You can now call methods on `dog`

---

## Multiple Ways to Create Objects

Different constructors can set up objects differently:

```dart
class Color {
  int red;
  int green;
  int blue;
  
  // Regular constructor
  Color(this.red, this.green, this.blue);
  
  // Create from hex string
  Color.fromHex(String hex) {
    // Parse hex and set colors
    red = int.parse(hex.substring(1, 3), radix: 16);
    green = int.parse(hex.substring(3, 5), radix: 16);
    blue = int.parse(hex.substring(5, 7), radix: 16);
  }
}

void main() {
  var color1 = Color(255, 0, 0);           // Red
  var color2 = Color.fromHex('#FF0000');   // Also red
}
```

Both create a Color object, but in different ways.

---

## Key Takeaway

**Class = Blueprint + Constructor = Setup**

- Class defines what data and methods exist
- Constructor initializes that data when the object is created
- `this` refers to the object being created
- Each time you call the constructor, you get a new object

---

## Next Steps

1. **Read** this briefing again until constructors feel natural
2. **Run** concept_examples.dart and watch objects being created
3. **Do** exercise1 — create a simple class
4. **Do** exercise2 — create a class with more features

Then you'll be ready for Module 1: Encapsulation.
