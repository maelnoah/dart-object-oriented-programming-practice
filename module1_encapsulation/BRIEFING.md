# Module 1: Encapsulation

## What is Encapsulation?

Encapsulation means **hiding internal details** and **controlling access** to an object's data.

Think of a bank account:
- You can't directly touch the money in the vault
- You use the ATM (interface) to withdraw or deposit
- The bank controls HOW you interact with your money
- If you try to withdraw more than you have, the ATM says NO

## Why Do We Need It?

1. **Protection**: You can't accidentally (or intentionally) break things
2. **Validation**: We check data before accepting it (no negative balance!)
3. **Control**: We decide what's allowed and what's not

## How Does It Work in Dart?

### Private Fields (Hidden Data)
In Dart, prefix a field with underscore `_` to make it private (hidden):

```dart
class BankAccount {
  double _balance;  // private: can't access from outside this file
  String accountNumber;  // public: anyone can access
}
```

### Getters (Read-Only Access)
Let people READ the data but not CHANGE it directly:

```dart
class BankAccount {
  double _balance = 0;
  
  double get balance => _balance;  // You can read it
  // But you can't do: account.balance = 1000000;  (ERROR!)
}
```

### Setters (Controlled Writing)
Control HOW data gets changed with validation:

```dart
class BankAccount {
  double _balance = 0;
  
  set balance(double amount) {
    if (amount < 0) {
      print('Error: balance cannot be negative');
    } else {
      _balance = amount;
    }
  }
}
```

### Methods (Actions with Rules)
Use methods to do things safely:

```dart
class BankAccount {
  double _balance = 0;
  
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;  // Inside the class, we can touch _balance
    }
  }
  
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
    }
  }
}
```

## The Pattern

```
Private Field (_data)
        ↑
  Getters/Setters
  Methods with Logic
        ↓
    Outside Code (can't touch _data directly)
```

---

## Key Takeaway

**Encapsulation = Private data + Public interface**

The outside world can't mess with your data. They must go through your controlled gates.

Next: Read `concept_examples.dart` and run it.
