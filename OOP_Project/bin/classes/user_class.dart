class User {
  //Fields
  final String name;
  final String id;

  //Constructor
  User({required this.name, required this.id});

  // Display user info method
  void displayInfo() {
    print("The User Name is $name, and Id: $id.");
  }
}
