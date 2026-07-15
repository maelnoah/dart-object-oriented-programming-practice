# Module 0: Prerequisites

## Before You Start OOP...

You need to be comfortable with these **fundamental Dart concepts**. If any feel unfamiliar, work through them before moving to Module 1.

---

## 1. Variables & Data Types

**What**: Store different types of data in memory

```dart
int age = 25;           // whole number
double height = 5.9;    // decimal number
String name = 'Alice';  // text
bool isStudent = true;  // true or false
```

**Why**: OOP uses variables to store object data (fields)

**You should know**:
- What `int`, `double`, `String`, `bool` are
- How to declare and assign variables
- How to print variables

---

## 2. Control Flow (If/Else)

**What**: Make decisions in code

```dart
if (age >= 18) {
  print('Adult');
} else {
  print('Minor');
}
```

**Why**: OOP methods use conditions to validate data and control behavior

**You should know**:
- `if`, `else if`, `else` statements
- Comparison operators: `==`, `!=`, `>`, `<`, `>=`, `<=`
- Logical operators: `&&` (and), `||` (or), `!` (not)

---

## 3. Loops (For & While)

**What**: Repeat code multiple times

```dart
// For loop
for (int i = 0; i < 5; i++) {
  print(i);
}

// While loop
int count = 0;
while (count < 5) {
  print(count);
  count++;
}
```

**Why**: OOP collections (lists) need loops to iterate through items

**You should know**:
- `for` loops (fixed number of iterations)
- `while` loops (while condition is true)
- `break` and `continue`

---

## 4. Functions (Methods)

**What**: Reusable blocks of code

```dart
int add(int a, int b) {
  return a + b;
}

void greet(String name) {
  print('Hello, $name!');
}

void main() {
  print(add(3, 5));    // 8
  greet('Alice');      // Hello, Alice!
}
```

**Why**: OOP classes contain methods (functions inside classes)

**You should know**:
- How to define functions
- Parameters and return values
- How to call functions
- `void` (no return) vs returning a value

---

## 5. Lists & Collections

**What**: Store multiple items

```dart
List<int> numbers = [1, 2, 3, 4, 5];
List<String> names = ['Alice', 'Bob', 'Charlie'];

print(numbers[0]);      // 1
numbers.add(6);         // Add to list
print(numbers.length);  // 6

for (var num in numbers) {
  print(num);
}
```

**Why**: OOP often uses lists to store many objects

**You should know**:
- Creating lists with `[]` or `List<Type>()`
- Accessing items with `[index]`
- `add()`, `remove()`, `length`, `isEmpty`
- Looping through lists with `for (var item in list)`

---

## 6. String Interpolation

**What**: Put variables inside strings

```dart
String name = 'Alice';
int age = 25;

print('My name is $name');           // My name is Alice
print('I am $age years old');        // I am 25 years old
print('Next year I\'ll be ${age+1}'); // Next year I'll be 26
```

**Why**: OOP print methods often need to show object data nicely

**You should know**:
- `$variable` for simple variables
- `${expression}` for calculations
- Escaping quotes with `\'`

---

## 7. Comments

**What**: Notes in code (Dart ignores them)

```dart
// Single line comment

/* Multi-line
   comment */

/// Documentation comment (for functions/classes)
void myFunction() {
  // Code here
}
```

**Why**: Good code is documented, especially in OOP

**You should know**:
- How to write comments
- Why comments are useful

---

## Checklist: Are You Ready for OOP?

Before starting Module 1, you should be able to:

- [ ] Write and run a simple Dart program with `dart run file.dart`
- [ ] Declare variables of different types (int, String, bool, double)
- [ ] Use if/else to make decisions
- [ ] Write for loops and while loops
- [ ] Write functions with parameters and return values
- [ ] Create and loop through a list
- [ ] Use string interpolation to print variables nicely
- [ ] Understand what a comment is

**If you checked all boxes**, you're ready for Module 1!

**If you checked less than 7**, work through the exercise files to review.

---

## Next Steps

1. **If confident in all topics**: Go directly to Module 1 (Encapsulation)
2. **If unsure about any topic**: Do the concept_examples.dart and exercises in this module
3. **Stuck on something**: Read the BRIEFING again or run concept_examples.dart

---

Start with: `module0_prerequisites/concept_examples.dart`
