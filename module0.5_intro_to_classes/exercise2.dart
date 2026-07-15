// EXERCISE 2: Create a Smartphone Class (Intermediate)
// Build a more complex class with constructor logic

// REQUIREMENTS:
// 1. Create a Smartphone class with:
//    - brand (String)
//    - model (String)
//    - batteryLevel (int) — percentage 0-100
//
// 2. Constructor: Smartphone(brand, model, batteryLevel)
//    - Use this.brand, this.model, this.batteryLevel
//    - If batteryLevel > 100, set it to 100
//    - If batteryLevel < 0, set it to 0
//    - Print "Phone created: $brand $model"
//
// 3. Method: chargeBattery(int percent)
//    - Add percent to batteryLevel
//    - But cap it at 100 (don't go over)
//    - Print "Charging... Battery now at ${batteryLevel}%"
//
// 4. Method: useBattery(int percent)
//    - Subtract percent from batteryLevel
//    - But don't let it go below 0
//    - Print "Using battery... Battery now at ${batteryLevel}%"
//
// 5. Method: displayStatus()
//    - Print "Device: $brand $model"
//    - Print "Battery: ${batteryLevel}%"
//    - If battery < 20, also print "⚠ Low battery!"
//
// 6. In main():
//    - Create 2 Smartphone objects with different battery levels
//    - Charge one, use battery on the other
//    - Display status for both

// STARTER CODE:
// class Smartphone {
//   // TODO: add fields
//
//   // TODO: add constructor with validation
//
//   // TODO: add chargeBattery method
//
//   // TODO: add useBattery method
//
//   // TODO: add displayStatus method
// }

  class Smartphone{
    String brand;
    String model;
    int batteryLevel = 0;

    Smartphone(this.brand, this.model, int batteryLevel) {
      if (batteryLevel > 100){
        this.batteryLevel = 100;
      } else if (batteryLevel < 0){
        this.batteryLevel = 0;
      } else {
        this.batteryLevel = batteryLevel;
      }
      print('Phone created: $brand $model');
    }

    void chargeBattery(int percent){
      batteryLevel += percent;
      if (batteryLevel > 100){
        batteryLevel = 100;
      }
      print('Charging... Battery now at ${batteryLevel}%');
    }

    void useBattery(int percent){
      batteryLevel -= percent;
      if (batteryLevel < 0){
        batteryLevel = 0;
      }
      print('Using battery... Battery now at ${batteryLevel}%');
    }

    void displayStatus(){
      print('Device: $brand $model');
      print('Battery: ${batteryLevel}%');
      if (batteryLevel < 20){
        print('⚠ Low battery!');
      }
    }

  
  }

void main() {
  var phone1 = Smartphone('Apple', 'iPhone', 50);
  var phone2 = Smartphone('Samsung', 'Galaxy', 15);

  phone1.displayStatus();
  phone1.chargeBattery(30);
  phone1.displayStatus();

  phone2.displayStatus();
  phone2.useBattery(10);
  phone2.displayStatus();
}

// EXPECTED OUTPUT (example):
// Phone created: Apple iPhone
// Phone created: Samsung Galaxy
// Device: Apple iPhone
// Battery: 50%
// Charging... Battery now at 80%
// Device: Apple iPhone
// Battery: 80%
// Device: Samsung Galaxy
// Battery: 15%
// Using battery... Battery now at 5%
// Device: Samsung Galaxy
// Battery: 5%
// ⚠ Low battery!
