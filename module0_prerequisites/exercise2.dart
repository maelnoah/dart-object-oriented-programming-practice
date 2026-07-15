// EXERCISE 2: Shopping Cart Calculator (Intermediate)
// Practice: variables, lists, loops, functions, string interpolation, if/else

// REQUIREMENTS:
// 1. Create a function: addItem(List<String> items, List<double> prices, String item, double price)
//    - Add item name and price to their respective lists
//    - Print "Added: $item - \$$price"
//
// 2. Create a function: calculateTotal(List<double> prices)
//    - Sum all prices
//    - Return total as double
//
// 3. Create a function: applyDiscount(double total, double discountPercent)
//    - Calculate discount: total * (discountPercent / 100)
//    - Return: total - discount
//    - Example: if total=100 and discountPercent=10, return 90
//
// 4. Create a function: displayCart(List<String> items, List<double> prices)
//    - Loop through items and prices together
//    - Print each: "$item: \$$price"
//    - Print total at end
//
// 5. In main():
//    - Create two lists: items (String) and prices (double)
//    - Add 4-5 items with prices using addItem()
//    - Display cart using displayCart()
//    - Calculate total
//    - Apply 10% discount
//    - Print original total, discount amount, and final price
//
// STARTER CODE:
// void addItem(List<String> items, List<double> prices, String item, double price) {
//   // TODO: implement
// }
//
// double calculateTotal(List<double> prices) {
//   // TODO: implement
// }
//
// double applyDiscount(double total, double discountPercent) {
//   // TODO: implement
// }
//
// void displayCart(List<String> items, List<double> prices) {
//   // TODO: implement
// }
//
// void main() {
//   List<String> items = [];
//   List<double> prices = [];
//
//   // TODO: add items and prices
//   // TODO: display cart
//   // TODO: calculate total
//   // TODO: apply discount
//   // TODO: print results
// }

// EXPECTED OUTPUT (example):
// Added: Milk - $3.50
// Added: Bread - $2.50
// Added: Cheese - $5.00
// Added: Eggs - $4.00
// Added: Butter - $3.50
//
// === Shopping Cart ===
// Milk: $3.5
// Bread: $2.5
// Cheese: $5.0
// Eggs: $4.0
// Butter: $3.5
//
// Original Total: $18.5
// Discount (10%): $1.85
// Final Price: $16.65
