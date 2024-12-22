class BankAccount {
  //Fields
  final String _accountId ;
  double _balance;

  // Constructors
  // Constructor: initializes __accountId with given amount and initializes _balance = 0
  BankAccount(this._accountId) : _balance = 0;

  // Named constructor: initializes __accountId and sets _balance to the specified amount
  BankAccount.withBalance(this._accountId, this._balance);

  // Functions
  // Deposit function
  void deposit(double amount) {
    _balance += amount;
  }

  // Withdraw function
  void withdraw(double amount) {
    if (amount < 0) {
      print('Error occurred-> amount cannot be negative');
    } else if (amount > _balance) {
      print('Error occurred-> insufficient _balance');
    } else {
      _balance -= amount;
      print("Withdrawal of \$$amount successful.");
    }
  }

  // Display function
  void displayAccountInfo() {
    print('The Account Id is: $_accountId');
    print('The current _balance is: \$$_balance');
    print('-------------------');
  }
}
