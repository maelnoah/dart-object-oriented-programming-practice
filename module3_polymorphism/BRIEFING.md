# Module 3: Polymorphism

## What is Polymorphism?

Polymorphism means **"many forms"**. The same method call behaves DIFFERENTLY depending on the actual object type.

Example:
```dart
List<Animal> animals = [Dog(), Cat(), Bird()];

for (var animal in animals) {
  animal.makeSound();  // Same call, but different sound each time!
}
```

Output:
```
Woof! Woof!
Meow...
Tweet! Tweet!
```

## Why Do We Need It?

1. **Flexibility**: Write code once, works with many types
2. **Scalability**: Add new types without changing existing code
3. **Clean Code**: One loop works for ALL animals, not different code per type

Without polymorphism, you'd need:
```dart
// ✗ BAD: Different code for each type
for (var i = 0; i < animals.length; i++) {
  if (animals[i] is Dog) {
    animals[i].woof();
  } else if (animals[i] is Cat) {
    animals[i].meow();
  } else if (animals[i] is Bird) {
    animals[i].chirp();
  }
}
```

With polymorphism:
```dart
// ✓ GOOD: Same code works for all
for (var animal in animals) {
  animal.makeSound();
}
```

## How Does It Work in Dart?

### Step 1: Create a Parent Class
Define a method that can be overridden:
```dart
class Animal {
  void makeSound() {
    print('Generic animal sound');
  }
}
```

### Step 2: Create Child Classes That Override
Each child changes HOW the method works:
```dart
class Dog extends Animal {
  @override
  void makeSound() {
    print('Woof! Woof!');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow...');
  }
}
```

### Step 3: Store Them as Parent Type
This is KEY to polymorphism:
```dart
List<Animal> animals = [
  Dog(),    // Stored as Animal, but really a Dog
  Cat(),    // Stored as Animal, but really a Cat
];
```

### Step 4: Call the Method
At runtime, Dart calls the ACTUAL object's method:
```dart
for (var animal in animals) {
  animal.makeSound();  // Calls Dog.makeSound(), Cat.makeSound(), etc.
}
```

## The Magic of Polymorphism

```
         makeSound()
            |
       (which one?)
       /    |    \
    Dog   Cat   Bird
    Woof  Meow  Tweet
```

At COMPILE TIME: we call animal.makeSound()
At RUNTIME: Dart checks "what is animal REALLY?" and calls that version

## Key Concepts

### @override
Mark that you're replacing a parent method:
```dart
@override
void makeSound() { }
```

### Actual vs Declared Type
```dart
Animal dog = Dog();   // declared as Animal, actually a Dog
dog.makeSound();      // Calls Dog.makeSound()
```

### The List Trick
```dart
List<Animal> animals = [Dog(), Cat(), Bird()];
// All stored as Animal, but each remembers its real type
```

---

## The Pattern

```
Parent Class (Animal)
    |
    ├─ Child Class (Dog) - overrides makeSound()
    ├─ Child Class (Cat) - overrides makeSound()
    └─ Child Class (Bird) - overrides makeSound()

Later:
List<Animal> animals = [Dog(), Cat(), Bird()];
for (animal in animals) {
  animal.makeSound();  // Each calls its own version
}
```

---

## Key Takeaway

**Polymorphism = Runtime dispatch of the right method**

You call one method name, but the ACTUAL object's version runs.

Next: Read `concept_examples.dart` and run it.
