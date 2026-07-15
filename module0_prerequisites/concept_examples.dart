// Prerequisites: Dart Fundamentals Review

void main() {
  print('=== DART FUNDAMENTALS REVIEW ===\n');

  // 1. VARIABLES & DATA TYPES
  print('--- 1. Variables & Data Types ---');
  int age = 25;
  double height = 5.9;
  String name = 'Alice';
  bool isStudent = true;

  print('Name: $name');
  print('Age: $age');
  print('Height: $height');
  print('Is student: $isStudent');

  // 2. CONTROL FLOW (If/Else)
  print('\n--- 2. If/Else ---');
  if (age >= 18) {
    print('$name is an adult');
  } else {
    print('$name is a minor');
  }

  if (height > 6.0) {
    print('Tall');
  } else if (height > 5.5) {
    print('Medium height');
  } else {
    print('Short');
  }

  // 3. LOOPS - FOR LOOP
  print('\n--- 3. For Loop ---');
  print('Counting 1 to 5:');
  for (int i = 1; i <= 5; i++) {
    print('  $i');
  }

  // 4. LOOPS - WHILE LOOP
  print('\n--- 4. While Loop ---');
  print('Counting down from 3:');
  int countdown = 3;
  while (countdown > 0) {
    print('  $countdown');
    countdown--;
  }
  print('  Blast off!');

  // 5. FUNCTIONS
  print('\n--- 5. Functions ---');
  int result = add(10, 20);
  print('10 + 20 = $result');

  greet('Bob');
  greet('Charlie');

  // 6. LISTS & COLLECTIONS
  print('\n--- 6. Lists ---');
  List<int> numbers = [1, 2, 3, 4, 5];
  print('Numbers: $numbers');
  print('First number: ${numbers[0]}');
  print('List length: ${numbers.length}');

  numbers.add(6);
  print('After adding 6: $numbers');

  print('Loop through list:');
  for (var num in numbers) {
    print('  - $num');
  }

  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  print('\nFruits: $fruits');
  for (var fruit in fruits) {
    print('  - $fruit');
  }

  // 7. STRING INTERPOLATION
  print('\n--- 7. String Interpolation ---');
  String city = 'Tokyo';
  int population = 37400068;
  print('$name lives in $city');
  print('Population: $population');
  print('Next year age: ${age + 1}');
  print('Half of population: ${population ~/ 2}');

  // 8. COMBINING EVERYTHING
  print('\n--- 8. All Together ---');
  printStudentInfo('Alice', 20, true);
  printStudentInfo('Bob', 19, false);
  printStudentInfo('Charlie', 25, false);
}

// FUNCTION: Add two numbers
int add(int a, int b) {
  return a + b;
}

// FUNCTION: Greet someone
void greet(String name) {
  print('Hello, $name!');
}

// FUNCTION: Print student info
void printStudentInfo(String name, int age, bool isStudent) {
  print('\nStudent: $name');
  print('  Age: $age');

  if (isStudent) {
    print('  Status: Currently studying');
  } else {
    print('  Status: Not currently studying');
  }

  if (age >= 21) {
    print('  Can vote: Yes');
  } else {
    print('  Can vote: No');
  }
}

// CONCEPT CHECKPOINT:
// ✓ Variables store data
// ✓ If/else makes decisions
// ✓ Loops repeat code
// ✓ Functions organize code
// ✓ Lists store multiple items
// ✓ String interpolation shows data nicely
// ✓ Everything works together!
