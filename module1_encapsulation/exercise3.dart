// EXERCISE 3: Create a Temperature Converter Class (Beginner)
// Learn: private fields, getters with calculations, setters with validation

// REQUIREMENTS:
// 1. Create a Temperature class with:
//    - _celsius (private double field, starts at 0)
//
// 2. Constructor: Temperature(double initialCelsius)
//    - Validate: celsius must be >= -273.15 (absolute zero)
//    - If invalid, print error and set to 0
//    - Use this._celsius shorthand
//
// 3. Getter: get celsius
//    - Return the private _celsius value
//    - Example: temp.celsius should return the stored temperature
//
// 4. Getter: get fahrenheit
//    - Convert celsius to fahrenheit
//    - Formula: (celsius * 9/5) + 32
//    - Example: 0°C = 32°F, 100°C = 212°F
//
// 5. Setter: set celsius(double newTemp)
//    - Validate: new temperature must be >= -273.15
//    - If valid: update _celsius
//    - If invalid: print "Error: Temperature cannot be below -273.15"
//
// 6. Setter: set fahrenheit(double tempF)
//    - Convert fahrenheit to celsius
//    - Formula: (fahrenheit - 32) * 5/9
//    - Then use the celsius setter (calls validation automatically!)
//
// 7. Method: getDescription()
//    - Return a String describing the temperature:
//    - If celsius < 0: "Below freezing"
//    - If celsius == 0: "Freezing point"
//    - If celsius > 0 && celsius < 100: "Room temperature range"
//    - If celsius >= 100: "Boiling point or above"
//
// 8. In main():
//    - Create a Temperature with 25°C
//    - Print: "Celsius: ${temp.celsius}°C"
//    - Print: "Fahrenheit: ${temp.fahrenheit}°F"
//    - Print: "${temp.getDescription()}"
//    - Change temperature to 100°C using celsius setter
//    - Print new celsius and fahrenheit
//    - Try setting invalid temperature (-300°C) and see validation work
//    - Set temperature using fahrenheit setter (e.g., 32°F = 0°C)
//    - Print final values

// STARTER CODE:
// class Temperature {
//   // TODO: add private field
//
//   // TODO: add constructor with validation
//
//   // TODO: add celsius getter
//
//   // TODO: add fahrenheit getter
//
//   // TODO: add celsius setter
//
//   // TODO: add fahrenheit setter
//
//   // TODO: add getDescription method
// }
//
// void main() {
//   // TODO: create temperature
//   // TODO: print values
//   // TODO: test setters
//   // TODO: test validation
// }

// EXPECTED OUTPUT (example):
// Celsius: 25.0°C
// Fahrenheit: 77.0°F
// Room temperature range
//
// Changed to 100°C
// Celsius: 100.0°C
// Fahrenheit: 212.0°F
// Boiling point or above
//
// Error: Temperature cannot be below -273.15
// Celsius: 100.0°C
//
// Changed to 32°F (which is 0°C)
// Celsius: 0.0°C
// Fahrenheit: 32.0°F
// Freezing point

// KEY SKILLS:
// - Private fields with validation
// - Getters that perform calculations
// - Setters that validate before storing
// - Cross-setter calls (fahrenheit setter calls celsius setter)
// - Conditional logic for descriptions
// - Temperature conversion formulas
