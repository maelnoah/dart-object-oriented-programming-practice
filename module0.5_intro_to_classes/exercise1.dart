// EXERCISE 1: Create a Simple Class (Beginner)
// Build a Rectangle class with constructor and methods

// REQUIREMENTS:
// 1. Create a Rectangle class with:
//    - width (double)
//    - height (double)
//
// 2. Constructor: Rectangle(width, height)
//    - Use this.width and this.height
//    - Print "Rectangle created: ${width}x${height}"
//
// 3. Method: area()
//    - Calculate and return width * height
//
// 4. Method: perimeter()
//    - Calculate and return 2 * (width + height)
//
// 5. Method: displayInfo()
//    - Print "Width: $width, Height: $height"
//    - Print "Area: ${area()}"
//    - Print "Perimeter: ${perimeter()}"
//
// 6. In main():
//    - Create 2 Rectangle objects
//    - Call displayInfo() on each
//    - They should have different dimensions

// STARTER CODE:
class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height) {
    print('Rectangle created: ${width}x${height}');
  }

  double area() {
    return width * height;
  }

  double perimeter() {
    return 2 * (width + height);
  }

  void displayInfo() {
    print('Width: $width, Height: $height');
    print('Area: ${area()}');
    print('Perimeter: ${perimeter()}');
  }

 
}

 main() {
    var rect1 = Rectangle(4.0, 6.0);
    var rect2 = Rectangle(5.0, 5.0);

    rect1.displayInfo();
    rect2.displayInfo();
  }

// EXPECTED OUTPUT (example):
// Rectangle created: 4.0x6.0
// Rectangle created: 5.0x5.0
// Width: 4.0, Height: 6.0
// Area: 24.0
// Perimeter: 20.0
// Width: 5.0, Height: 5.0
// Area: 25.0
// Perimeter: 20.0
