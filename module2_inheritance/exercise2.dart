// EXERCISE 2: Employee Hierarchy (Intermediate)
// Build a parent-child inheritance with method override

// REQUIREMENTS:
// 1. Parent class: Employee
//    - Fields: name (String), salary (double), position (String)
//    - Constructor: Employee(name, salary, position)
//    - Method: work() → print "$name is working as a $position"
//    - Method: getSalary() → return salary
//    - Method: displayInfo() → print "Name: $name | Salary: $salary | Position: $position"
//
// 2. Child class: Manager extends Employee
//    - New field: teamSize (int)
//    - Constructor: Manager(name, salary, teamSize)
//      * Call super(name, salary, "Manager")
//    - Override work():
//      * Call super.work()
//      * Then print "$name is managing a team of $teamSize people"
//    - Override getSalary():
//      * Calculate bonus: salary + (salary * 0.2)  // 20% bonus
//      * Return the total
//    - Override displayInfo():
//      * Call super.displayInfo()
//      * Then print "Team Size: $teamSize"
//
// 3. Child class: Developer extends Employee
//    - New field: language (String)  // e.g., "Dart", "Python"
//    - Constructor: Developer(name, salary, language)
//      * Call super(name, salary, "Developer")
//    - Override work():
//      * Call super.work()
//      * Then print "$name is coding in $language"
//    - Override displayInfo():
//      * Call super.displayInfo()
//      * Then print "Language: $language"

// STARTER CODE:
// class Employee {
//   // TODO: add fields, constructor, methods
// }
//
// class Manager extends Employee {
//   // TODO: add teamSize field, constructor, override work/getSalary/displayInfo
// }
//
// class Developer extends Employee {
//   // TODO: add language field, constructor, override work/displayInfo
// }
//
// void main() {
//   var emp = Employee('John', 3000, 'Intern');
//   var mgr = Manager('Alice', 5000, 5);
//   var dev = Developer('Bob', 4000, 'Dart');
//
//   emp.displayInfo();
//   emp.work();
//
//   print('');
//
//   mgr.displayInfo();
//   mgr.work();
//   print('Manager total salary (with bonus): \$${mgr.getSalary()}');
//
//   print('');
//
//   dev.displayInfo();
//   dev.work();
// }

// EXPECTED OUTPUT:
// Name: John | Salary: 3000.0 | Position: Intern
// John is working as a Intern
//
// Name: Alice | Salary: 5000.0 | Position: Manager
// Team Size: 5
// Alice is working as a Manager
// Alice is managing a team of 5 people
// Manager total salary (with bonus): $6000.0
//
// Name: Bob | Salary: 4000.0 | Position: Developer
// Language: Dart
// Bob is working as a Developer
// Bob is coding in Dart
