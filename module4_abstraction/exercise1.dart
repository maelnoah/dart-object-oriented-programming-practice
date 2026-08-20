// EXERCISE 1: Database Connections (Beginner)
// Abstract database interface, concrete implementations

// REQUIREMENTS:
// 1. Abstract class: Database
//    - Abstract method: connect() → print that it's connecting
//    - Abstract method: disconnect() → print that it's disconnecting
//    - Abstract method: query(String sql) → return String
//    - Concrete method: testConnection():
//      * Call connect()
//      * Print "Connected successfully!"
//      * Call disconnect()
//
// 2. Child class: MySQLDatabase extends Database
//    - Override connect() → print "Connecting to MySQL..."
//    - Override disconnect() → print "Disconnecting from MySQL..."
//    - Override query(sql) → return "MySQL result for: $sql"
//
// 3. Child class: PostgresDatabase extends Database
//    - Override connect() → print "Connecting to PostgreSQL..."
//    - Override disconnect() → print "Disconnecting from PostgreSQL..."
//    - Override query(sql) → return "PostgreSQL result for: $sql"
//
// 4. Child class: MongoDatabase extends Database
//    - Override connect() → print "Connecting to MongoDB..."
//    - Override disconnect() → print "Disconnecting from MongoDB..."
//    - Override query(sql) → return "MongoDB document for: $sql"
//
// 5. In main():
//    - Create List<Database> with 3 different databases
//    - Loop and call testConnection() for each
//    - Loop and print query result for each

// STARTER CODE:
abstract class Database {
  // TODO: add abstract methods
  void connect();
  void disconnect();
  String query(String sql);
  
  // TODO: add concrete testConnection method
void testConnection() {
  connect();
  print("Connected successfully!");
  disconnect();
}

}

class MySQLDatabase extends Database {
  // TODO: implement abstract methods

  @override
  void connect(){
    print("Connecting to MySQL...");
  }
  
  @override
  void disconnect(){
    print("Disconnecting from MySQL...");
  }

  @override
  String query(String sql){
    return "MySQL result for: $sql";
  }

}

class PostgresDatabase extends Database {
  // TODO: implement abstract methods
  @override
  void connect(){
    print("Connecting to PostgreSQL...");
  }
  
  @override
  void disconnect(){
    print("Disconnecting from PostgreSQL...");
  }

  @override
  String query(String sql){
    return "PostgreSQL result for: $sql";
  }

}

class MongoDatabase extends Database {
  // TODO: implement abstract methods
    @override
  void connect(){
    print("Connecting to MongoDB...");
  }
  
  @override
  void disconnect(){
    print("Disconnecting from MongoDB...");
  }

  @override
  String query(String sql){
    return "MongoDB result for: $sql";
  }
  
}
//
void main() {
  List<Database> databases = [
    MySQLDatabase(),
    PostgresDatabase(),
    MongoDatabase(),
  ];

  for (var db in databases) {
    db.testConnection();
    print('');
  }

  for (var db in databases) {
    print(db.query('SELECT * FROM users'));
  }
}

// EXPECTED OUTPUT (example):
// Connecting to MySQL...
// Connected successfully!
// Disconnecting from MySQL...
//
// Connecting to PostgreSQL...
// Connected successfully!
// Disconnecting from PostgreSQL...
//
// Connecting to MongoDB...
// Connected successfully!
// Disconnecting from MongoDB...
//
// MySQL result for: SELECT * FROM users
// PostgreSQL result for: SELECT * FROM users
// MongoDB document for: SELECT * FROM users
