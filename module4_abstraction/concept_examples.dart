// Abstraction Example: Vehicles with abstract methods

// Abstract class: defines contract without full implementation
abstract class Vehicle {
  String brand;

  Vehicle(this.brand);

  // Abstract method: subclasses MUST implement this
  void startEngine();

  // Abstract method: subclasses MUST implement this
  double getMaxSpeed();

  // Concrete method: has implementation, shared by all
  void honk() {
    print('$brand: Beep! Beep!');
  }

  // Another concrete method
  void displayInfo() {
    print('Brand: $brand | Max Speed: ${getMaxSpeed()} km/h');
  }
}

// Concrete class: implements all abstract methods
class Car extends Vehicle {
  Car(String brand) : super(brand);

  @override
  void startEngine() {
    print('$brand car engine: Vroooom!');
  }

  @override
  double getMaxSpeed() => 200.0;
}

class Motorcycle extends Vehicle {
  Motorcycle(String brand) : super(brand);

  @override
  void startEngine() {
    print('$brand motorcycle engine: Pfffttt!');
  }

  @override
  double getMaxSpeed() => 250.0;
}

class Truck extends Vehicle {
  Truck(String brand) : super(brand);

  @override
  void startEngine() {
    print('$brand truck engine: Rummmble!');
  }

  @override
  double getMaxSpeed() => 140.0;
}

void main() {
  print('=== Abstraction in Action ===\n');

  // Can't do this: var v = Vehicle('Generic');  // ✗ ERROR!

  // Must use concrete subclasses:
  List<Vehicle> vehicles = [
    Car('Toyota'),
    Motorcycle('Harley'),
    Truck('Volvo'),
  ];

  print('--- Starting all engines ---');
  for (var vehicle in vehicles) {
    vehicle.startEngine();  // Each implements differently
  }

  print('\n--- Shared honk() method ---');
  for (var vehicle in vehicles) {
    vehicle.honk();  // All use same implementation
  }

  print('\n--- Max speeds ---');
  for (var vehicle in vehicles) {
    vehicle.displayInfo();
  }

  print('\n--- Why abstraction helps ---');
  print('1. Can\'t create a generic Vehicle (must be Car, Motorcycle, etc.)');
  print('2. Each subclass MUST implement startEngine()');
  print('3. Can share code like honk()');
}

// CONCEPT CHECKPOINT:
// - Vehicle is abstract: can't instantiate it
// - startEngine() is abstract: each subclass must define how
// - honk() is concrete: all subclasses inherit it
// - List<Vehicle> contains concrete subclasses (Car, Motorcycle, Truck)
// - Abstraction forces consistency and prevents bad designs
