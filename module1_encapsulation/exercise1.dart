// EXERCISE 1: Student Grades (Beginner)
// Build a Student class that encapsulates grade data

// REQUIREMENTS:
// 1. Fields:
//    - name (public)
//    - _grade (private, 0-100 only)
//
// 2. Constructor: Student(name, grade)
//
// 3. Getter:
//    - grade → returns the private _grade
//
// 4. Method:
//    - setGrade(double newGrade)
//      * Only accept 0-100
//      * Print error if invalid
//      * Update _grade if valid
//
// 5. Method:
//    - getLetterGrade() → return String
//      * A if grade >= 90
//      * B if grade >= 80
//      * C if grade >= 70
//      * D if grade >= 60
//      * F if below 60
//
// 6. Method:
//    - displayInfo() → print name and letter grade

// STARTER CODE:
// class Student {
//   // TODO: add fields
//
//   // TODO: add constructor
//
//   // TODO: add getter for grade
//
//   // TODO: add setGrade method
//
//   // TODO: add getLetterGrade method
//
//   // TODO: add displayInfo method
// }
//
// void main() {
//   var student = Student('Bob', 85);
//   student.displayInfo();  // Output: Bob - Grade: B
//
//   student.setGrade(92);
//   student.displayInfo();  // Output: Bob - Grade: A
//
//   student.setGrade(150);  // Should show error
// }

// EXPECTED OUTPUT:
// Bob - Grade: B
// Bob - Grade: A
// Error: Grade must be 0-100
