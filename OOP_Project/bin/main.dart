import 'classes/book_class.dart';
import 'classes/user_class.dart';
import 'classes/library_class.dart';

void main() {
  Library library = Library();
  // Define books
  Book book1 = Book(title: 'A story of yesterday', id: '01');
  Book book2 = Book(title: 'Something wicked this way comes', id: '02');

  // Define users
  User ahmed = User(name: 'Ahmed', id: '1');
  User ali = User(name: 'Ali', id: '2');
  print('Start===================');

  // Add books in library
  library.addBook(book1);
  library.addBook(book2);

  // Add Users in library
  library.addUser(ahmed);
  library.addUser(ali);

  // let's do some borrow and return operations
  // Ahmed borrow book1 and book 2
  library.borrowBook(book1, ahmed);
  library.borrowBook(book2, ahmed);
  // Ali tries to borrow book2 too -> (error message)
  library.borrowBook(book2, ali);
  // Ahmed returns book2 back
  library.returnBook(book2);
  // Ali tries to borrow book2 again
  library.borrowBook(book2, ali);

  ////////////////////
  // finally display the library information
  library.displayInfo();
  print('End===================');
}
