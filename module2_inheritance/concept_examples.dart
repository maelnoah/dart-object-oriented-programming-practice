// Inheritance Example: Vehicle Hierarchy

class Vehicle {
  String brand;
  int speed = 0;

  Vehicle(this.brand);

  void accelerate() {
    speed += 10;
    print('$brand is accelerating... now at $speed km/h');
  }

  void brake() {
    speed = 0;
    print('$brand stopped.');
  }

  void displayInfo() {
    print('Brand: $brand | Speed: $speed km/h');
  }
}

// Car INHERITS from Vehicle
class Car extends Vehicle {
  int numDoors;

  // Constructor calls parent with super()
  Car(String brand, this.numDoors) : super(brand);

  // Inherited: brand, speed, accelerate(), brake(), displayInfo()

  @override
  void displayInfo() {
    super.displayInfo();  // Call parent's displayInfo
    print('Doors: $numDoors');
  }
}

// Truck INHERITS from Vehicle
class Truck extends Vehicle {
  double cargoWeight;  // kg

  Truck(String brand, this.cargoWeight) : super(brand);

  @override
  void accelerate() {
    // Trucks accelerate slower
    speed += 5;
    print('$brand truck is accelerating slowly... now at $speed km/h');
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print('Cargo Weight: ${cargoWeight}kg');
  }
}

void main() {
  print('=== Creating Vehicles ===\n');

  var myCar = Car('Toyota', 4);
  var myTruck = Truck('Volvo', 5000);

  print('--- Car Info ---');
  myCar.displayInfo();

  print('\n--- Truck Info ---');
  myTruck.displayInfo();

  print('\n=== Testing Inheritance ===\n');

  print('--- Car Acceleration ---');
  myCar.accelerate();
  myCar.accelerate();
  myCar.displayInfo();

  print('\n--- Truck Acceleration ---');
  myTruck.accelerate();
  myTruck.accelerate();
  myTruck.displayInfo();

  print('\n--- Braking (inherited) ---');
  myCar.brake();
  myTruck.brake();
}

// CONCEPT CHECKPOINT:
// - Car and Truck DON'T repeat Vehicle's code
// - Both INHERIT: brand, speed, accelerate(), brake()
// - Both OVERRIDE: displayInfo() and Truck overrides accelerate()
// - super.method() calls parent's version THEN adds own behavior
