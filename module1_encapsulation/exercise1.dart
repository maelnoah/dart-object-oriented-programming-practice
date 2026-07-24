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
 class Student {
// TODO: add fields
    String name = '';
    int _grade = 0;

// TODO: add constructor
    Student(String name, int grade){
      this.name = name;
      if (grade >= 0 && grade <= 100){
        this._grade = grade;
      } else {
        print('Error: Grade must be 0-100');
      }
    }
//
// TODO: add getter for grade
    int get grade {
      return _grade;
    }
// TODO: add setGrade method
    void setGrade(double newGrade){
      if (newGrade >= 0 && newGrade <= 100){
        _grade = newGrade.toInt();
      } else {
        print('Error: Grade must be 0-100');

      }

    }
//  TODO: add getLetterGrade method
    String getLetterGrade(){
      if (_grade >= 90){
        return 'A';
      } else if (_grade >= 80){
        return 'B';
      } else if (_grade >= 70){
        return 'C';
      } else if (_grade >= 60){
        return 'D';
      } else {
        return 'F';
      }
    }
//  TODO: add displayInfo method
    void displayInfo(){
      print ('$name - Grade: ${getLetterGrade()}');
    }
 }

//
void main() {
  var student = Student('Bob', 85);
  student.displayInfo();  // Output: Bob - Grade: B

  student.setGrade(92);
  student.displayInfo();  // Output: Bob - Grade: A

  student.setGrade(150);  // Should show error
}

// EXPECTED OUTPUT:
// Bob - Grade: B
// Bob - Grade: A
// Error: Grade must be 0-100
