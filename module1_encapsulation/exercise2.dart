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
class Book {
  // TODO: add fields
  late String _title;
  late String _author;
  late bool _isAvailable;
  String? _borrowedBy;
  
  // TODO: add constructor
  Book(this._title, this._author) {
    _isAvailable = true;
    _borrowedBy = null;
  }

  // TODO: add getters
  String get title => _title;
  String get author => _author;
  bool get isAvailable => _isAvailable;
  String? get borrowedBy => _borrowedBy;

  // TODO: add borrowBook method
  void borrowBook(String personName) {
    if (_isAvailable) {
      _isAvailable = false;
      _borrowedBy = personName;
      print("✓ $personName borrowed '$_title'");
    } else {
      print("✗ '$_title' is already borrowed by $_borrowedBy");
    }
  }
  

  // TODO: add returnBook method
  void returnBook() {
    if (!_isAvailable) {
      print("✓ '$_title' was returned by $_borrowedBy");
      _isAvailable = true;
      _borrowedBy = null;
    } else {
      print("✗ '$_title' wasn't borrowed");
    }
  }

  // TODO: add displayInfo method
  void displayInfo() {
    print("Book: '$_title' by $_author");
    print("Status: ${_isAvailable ? 'Available' : "Borrowed by $_borrowedBy"}");
  }
}

void main() {
  var book = Book('The Hobbit', 'J.R.R. Tolkien');
  book.displayInfo();

  book.borrowBook('Alice');
  book.displayInfo();

  book.borrowBook('Bob');  // Should fail

  book.returnBook();
  book.displayInfo();
}

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
