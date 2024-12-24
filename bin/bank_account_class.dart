class BankAccount {
  //Fields
  final String _accountId;

  double balance;

  // Constructors
  // Constructor: initializes accountId and balance with given amount when creating an object
  BankAccount(this._accountId, this.balance);

  // Named constructor: initializes accountId (required) and sets balance to the specified amount (optional), if no value sent the constructor will initialize balance to 0
  BankAccount.withOptionalBalance(this._accountId, {this.balance = 0.0});

  // Functions
  // Deposit function
  void deposit(double amount) {
    balance += amount;
  }

  // Withdraw function
  void withdraw(double amount) {
    if (amount < 0) {
      print('Error occurred-> amount cannot be negative');
    } else if (amount > balance) {
      print('Error occurred-> insufficient _balance');
    } else {
      balance -= amount;
      print("Withdrawal of \$$amount successful.");
    }
  }

  // Display function
  void displayAccountInfo() {
    print('The Account Id is: $_accountId');
    print('The current _balance is: \$$balance');
    print('-------------------');
  }
}
