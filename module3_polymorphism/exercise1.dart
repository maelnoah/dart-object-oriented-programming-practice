// EXERCISE 1: Shape Area Calculator (Beginner)
// Use polymorphism to calculate area for different shapes

// REQUIREMENTS:
// 1. Parent class: Shape
//    - Method: area() → print "Calculating area..."
//    - Method: displayArea() → print "Area: ${area()}"
//
// 2. Child class: Circle extends Shape
//    - Field: radius (double)
//    - Constructor: Circle(radius)
//    - Override area():
//      * Return 3.14159 * radius * radius
//
// 3. Child class: Rectangle extends Shape
//    - Fields: width (double), height (double)
//    - Constructor: Rectangle(width, height)
//    - Override area():
//      * Return width * height
//
// 4. Child class: Triangle extends Shape
//    - Fields: base (double), height (double)
//    - Constructor: Triangle(base, height)
//    - Override area():
//      * Return (base * height) / 2
//
// 5. In main():
//    - Create List<Shape> with 3+ shapes
//    - Loop through and call displayArea() for each
//    - Show that same method call works for all!

//STARTER CODE:
class Shape {
  // TODO: add methods
  double area(){
    print("Calculating area...");
    return 0.0;
  }

  double displayArea(){
    print("Area: ${area()}");
    return area();
  }

}

class Circle extends Shape {
  // TODO: add fields, constructor, override area()
  double radius;
  Circle(this.radius);
  @override
  double area(){
    print("Calculating area...");
    return 3.14159 * radius * radius;
  }

}

class Rectangle extends Shape {
  // TODO: add fields, constructor, override area()
  double width;
  double height;

    Rectangle(this.width, this.height);

    @override
    double area(){
        print("Calculating area...");
        return width * height;
        }
}

class Triangle extends Shape {
  // TODO: add fields, constructor, override area()
  double base;
  double height;

  Triangle(this.base, this.height);

  @override
  double area(){
    print("Calculating area...");
    return (base * height) / 2;
  }
}

void main() {
  List<Shape> shapes = [
    Circle(5),
    Rectangle(4, 6),
    Triangle(3, 4),
  ];

  for (var shape in shapes) {
    shape.displayArea();
  }
}

// EXPECTED OUTPUT (approximately):
// Calculating area...
// Area: 78.54749999999999
// Calculating area...
// Area: 24.0
// Calculating area...
// Area: 6.0
