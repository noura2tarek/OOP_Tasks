class Book {
  // Fields
  final String title;
  final String id;
  bool isBorrowed;

  // Constructor
  Book({required this.title, required this.id}) : isBorrowed = false;

  // Display book info method
  void displayInfo() {
    String status = isBorrowed ? "Borrowed" : "available";
    print("The Book Title is $title, Id: $id, and Status: $status.");
  }
}
