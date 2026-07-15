// EXERCISE 2: Library Book (Intermediate)
// Build a Book class that tracks lending with encapsulation

// REQUIREMENTS:
// 1. Fields (all private):
//    - _title (String)
//    - _author (String)
//    - _isAvailable (bool, true = not checked out)
//    - _borrowedBy (String?, nullable - who has it, or null)
//
// 2. Constructor: Book(title, author)
//    - Set _isAvailable = true
//    - Set _borrowedBy = null
//
// 3. Getters:
//    - title → return _title
//    - author → return _author
//    - isAvailable → return _isAvailable
//    - borrowedBy → return _borrowedBy (or "Nobody" if null)
//
// 4. Method: borrowBook(String personName)
//    - If _isAvailable = true:
//      * Set _isAvailable = false
//      * Set _borrowedBy = personName
//      * Print: "✓ Bob borrowed 'The Hobbit'"
//    - If _isAvailable = false:
//      * Print: "✗ 'The Hobbit' is already borrowed by $_borrowedBy"
//
// 5. Method: returnBook()
//    - If _isAvailable = false:
//      * Set _isAvailable = true
//      * Print: "✓ '$_title' was returned by $_borrowedBy"
//      * Set _borrowedBy = null
//    - If already available:
//      * Print: "✗ '$_title' wasn't borrowed"
//
// 6. Method: displayInfo()
//    - Print: "Book: '$_title' by $_author"
//    - Print: "Status: Available" OR "Borrowed by $_borrowedBy"

// STARTER CODE:
// class Book {
//   // TODO: add fields
//
//   // TODO: add constructor
//
//   // TODO: add getters
//
//   // TODO: add borrowBook method
//
//   // TODO: add returnBook method
//
//   // TODO: add displayInfo method
// }
//
// void main() {
//   var book = Book('The Hobbit', 'J.R.R. Tolkien');
//   book.displayInfo();
//
//   book.borrowBook('Alice');
//   book.displayInfo();
//
//   book.borrowBook('Bob');  // Should fail
//
//   book.returnBook();
//   book.displayInfo();
// }

// EXPECTED OUTPUT:
// Book: 'The Hobbit' by J.R.R. Tolkien
// Status: Available
// ✓ Alice borrowed 'The Hobbit'
// Book: 'The Hobbit' by J.R.R. Tolkien
// Status: Borrowed by Alice
// ✗ 'The Hobbit' is already borrowed by Alice
// ✓ 'The Hobbit' was returned by Alice
// Book: 'The Hobbit' by J.R.R. Tolkien
// Status: Available
