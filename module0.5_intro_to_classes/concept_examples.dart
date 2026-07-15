// Introduction to Classes and Constructors

// EXAMPLE 1: Simple class with constructor
class Dog {
  String name;
  int age;

  // Constructor: runs when you create a new Dog
  Dog(this.name, this.age) {
    print('✓ Created a dog: $name, age $age');
  }

  void bark() {
    print('$name says: Woof!');
  }

  void displayInfo() {
    print('Name: $name | Age: $age years');
  }
}

// EXAMPLE 2: Class with multiple constructors
class Person {
  String name;
  int age;
  String? country; // ? means optional (can be null)

  // Regular constructor
  Person(this.name, this.age, {this.country});

  // Named constructor: create from another person's data
  Person.copy(Person other)
      : name = other.name,
        age = other.age,
        country = other.country {
    print('✓ Copied person: ${other.name}');
  }

  void introduce() {
    String intro = 'Hi, I\'m $name, $age years old';
    if (country != null) {
      intro += ', from $country';
    }
    print(intro);
  }
}

// EXAMPLE 3: Class with initialization logic in constructor
class BankAccount {
  String owner;
  late double _balance;

  BankAccount(this.owner, double initialBalance) {
    // Validation in constructor
    if (initialBalance < 0) {
      _balance = 0;
      print('⚠ Warning: Initial balance was negative, set to 0');
    } else {
      _balance = initialBalance;
    }
    print('✓ Account created for $owner with balance: \$${_balance}');
  }

  void deposit(double amount) {
    _balance += amount;
  }

  void printBalance() {
    print('Balance: \$${_balance}');
  }
}

void main() {
  print('=== CLASSES AND CONSTRUCTORS ===\n');

  // EXAMPLE 1: Creating objects triggers constructors
  print('--- Creating Dog Objects ---');
  var dog1 = Dog('Mat', 3);
  var dog2 = Dog('Kamil', 5);

  dog1.displayInfo();
  dog1.bark();

  dog2.displayInfo();
  dog2.bark();

  // EXAMPLE 2: Each object is separate
  print('\n--- Each Object is Separate ---');
  print('Dog 1: ${dog1.name}');
  print('Dog 2: ${dog2.name}');
  // They have the same structure but different data!

  // EXAMPLE 3: Person class with optional field
  print('\n--- Person with Optional Field ---');
  var person1 = Person('Alice', 25, country: 'Japan');
  var person2 = Person('Bob', 30);

  person1.introduce();
  person2.introduce();

  // EXAMPLE 4: Named constructor (copy)
  print('\n--- Named Constructor (copy) ---');
  var person3 = Person.copy(person1);
  person3.introduce();

  // EXAMPLE 5: Constructor with logic
  print('\n--- Constructor with Validation ---');
  var account1 = BankAccount('Alice', 1000);
  account1.deposit(500);
  account1.printBalance();

  print('\n--- Constructor validation in action ---');
  var account2 = BankAccount('Bob', -100); // Invalid!
  account2.printBalance();

  // EXAMPLE 6: Multiple objects don't interfere
  print('\n--- Multiple Objects Don\'t Interfere ---');
  var dog3 = Dog('Rex', 2);
  var dog4 = Dog('Bella', 1);

  dog3.bark();
  dog4.bark();
  print('Dog 3 is still: ${dog3.name}');
  print('Dog 4 is still: ${dog4.name}');
}

// CONCEPT CHECKPOINT:
// ✓ Each Dog(...) call creates a NEW dog object
// ✓ The constructor runs automatically
// ✓ this.fieldName saves the parameters to the object
// ✓ Different objects have separate data
// ✓ Constructors can have logic (validation, calculations)
// ✓ You can have multiple constructors (regular + named)
