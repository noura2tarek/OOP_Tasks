import 'book_class.dart';
import 'user_class.dart';

class Library {
  // Fields
  final List<Book> _books = [];
  final List<User> _users = [];

  // Methods
  // Add Book method
  void addBook(Book book) {
    _books.add(book);
    print('The Book with the title ${book.title} was added to library.\n');
  }

  // Borrow book method
  void borrowBook(Book book, User user) {
    if (!_books.contains(book)) {
      print('Book with the title ${book.title} is not found in library.\n');
      return;
    }
    if (book.isBorrowed) {
      print('Book with the title ${book.title} is currently borrowed.\n');
      return;
    }
    if (!_users.contains(user)) {
      print('User with the id ${user.id} does not exist.\n');
      return;
    }
    book.isBorrowed = true;
    print('Book with the title ${book.title} was borrowed by ${user.name}.\n');
  }

  // Return book method
  void returnBook(Book book) {
    if (!_books.contains(book)) {
      print('Book with the title ${book.title} is not found in library.\n');
      return;
    }
    if (!book.isBorrowed) {
      print('Book with the title ${book.title} is not currently borrowed.\n');
      return;
    }
    book.isBorrowed = false;
    print('Book with the title ${book.title} has been returned.\n');
  }

  // Add user method
  void addUser(User user) {
    _users.add(user);
    print('User with name ${user.name} was added to library.\n');
  }

  // display library info method
  void displayInfo() {
    print('Library has ${_books.length} books and ${_users.length} users.\n');
    // The library books are:
    print('The library books are:');
    for (var book in _books) {
      book.displayInfo();
    }
    // The library users are:
    print('\nThe library users are:');
    for (var user in _users) {
      user.displayInfo();
    }
  }
}
