// Encapsulation Example: Bank Account
// Hide _balance, expose it through controlled methods

class BankAccount {
  String owner;
  String _accountNumber;  // private: only accessible here
  double _balance;         // private: only accessible here

  // Constructor
  BankAccount(this.owner, this._accountNumber, double initialBalance)
      : _balance = initialBalance > 0 ? initialBalance : 0;

  // Getter: read balance safely
  double get balance => _balance;

  // Getter: read account number safely
  String get accountNumber => _accountNumber;

  // Method: deposit with validation
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('✓ Deposited \$$amount. New balance: \$$_balance');
    } else {
      print('✗ Cannot deposit \$$amount (must be positive)');
    }
  }

  // Method: withdraw with validation
  void withdraw(double amount) {
    if (amount <= 0) {
      print('✗ Cannot withdraw \$$amount (must be positive)');
    } else if (amount > _balance) {
      print('✗ Cannot withdraw \$$amount (only have \$$_balance)');
    } else {
      _balance -= amount;
      print('✓ Withdrew \$$amount. New balance: \$$_balance');
    }
  }

  // Method: display statement
  void printStatement() {
    print('\n=== Account Statement ===');
    print('Owner: $owner');
    print('Account: $_accountNumber');
    print('Balance: \$$_balance');
    print('========================\n');
  }
}

void main() {
  var account = BankAccount('Alice', 'ACC123', 1000);

  account.printStatement();

  // Using methods (safe)
  account.deposit(500);
  account.withdraw(200);
  account.printStatement();

  // Trying to break it (won't work)
  print('Trying to access _balance directly...');
  // account._balance = 999999;  // ← This would FAIL (error!)

  print('Balance via getter: \$${account.balance}');
  account.printStatement();

  // Trying bad operations
  print('Trying invalid operations:');
  account.deposit(-100);    // invalid
  account.withdraw(999999); // insufficient funds
}

// CONCEPT CHECKPOINT:
// - _balance is PRIVATE (hidden), can't be touched from outside
// - balance getter lets us READ the value safely
// - deposit() and withdraw() have VALIDATION before changing _balance
// - This prevents data corruption and invalid states
