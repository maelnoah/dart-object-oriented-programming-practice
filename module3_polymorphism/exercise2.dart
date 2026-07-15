// EXERCISE 2: Payment Methods (Intermediate)
// Polymorphism for different payment types

// REQUIREMENTS:
// 1. Parent class: PaymentMethod
//    - Method: processPayment(double amount)
//      * Print "Processing payment of \$$amount..."
//    - Method: getDescription() → return String (default: "Unknown payment")
//    - Method: displayPaymentInfo(double amount):
//      * Print "${getDescription()}"
//      * Call processPayment(amount)
//
// 2. Child class: CreditCard extends PaymentMethod
//    - Field: cardNumber (String)
//    - Constructor: CreditCard(cardNumber)
//    - Override getDescription() → "Credit Card: $cardNumber"
//    - Override processPayment(amount):
//      * Call super.processPayment(amount)
//      * Print "Charging credit card..."
//      * Print "Fee: \$${amount * 0.02}"  // 2% fee
//
// 3. Child class: PayPal extends PaymentMethod
//    - Field: email (String)
//    - Constructor: PayPal(email)
//    - Override getDescription() → "PayPal: $email"
//    - Override processPayment(amount):
//      * Call super.processPayment(amount)
//      * Print "Sending to PayPal account..."
//
// 4. Child class: CryptoCurrency extends PaymentMethod
//    - Field: walletAddress (String)
//    - Constructor: CryptoCurrency(walletAddress)
//    - Override getDescription() → "Crypto Wallet: $walletAddress"
//    - Override processPayment(amount):
//      * Call super.processPayment(amount)
//      * Print "Converting to blockchain..."
//
// 5. In main():
//    - Create List<PaymentMethod> with 3 different payment types
//    - Loop through and call displayPaymentInfo(100) for each
//    - BONUS: Add a new payment method without changing the loop!

// STARTER CODE:
// class PaymentMethod {
//   // TODO: add methods
// }
//
// class CreditCard extends PaymentMethod {
//   // TODO: add fields, constructor, override methods
// }
//
// class PayPal extends PaymentMethod {
//   // TODO: add fields, constructor, override methods
// }
//
// class CryptoCurrency extends PaymentMethod {
//   // TODO: add fields, constructor, override methods
// }
//
// void main() {
//   List<PaymentMethod> payments = [
//     CreditCard('4111-1111-1111-1111'),
//     PayPal('user@example.com'),
//     CryptoCurrency('1A1z7agoat...'),
//   ];
//
//   for (var payment in payments) {
//     payment.displayPaymentInfo(100);
//     print('');
//   }
// }

// EXPECTED OUTPUT (example):
// Credit Card: 4111-1111-1111-1111
// Processing payment of $100...
// Charging credit card...
// Fee: $2.0
//
// PayPal: user@example.com
// Processing payment of $100...
// Sending to PayPal account...
//
// Crypto Wallet: 1A1z7agoat...
// Processing payment of $100...
// Converting to blockchain...
