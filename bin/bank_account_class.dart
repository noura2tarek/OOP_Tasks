class BankAccount {
  //Fields
  String accountId = '';
  double balance = 0;

  // Constructors
  // Constructor: initializes accountID with given amount and initializes balance = 0
  BankAccount(this.accountId) : balance = 0;

  // Named constructor: initializes accountID and sets balance to the specified amount
  BankAccount.withBalance(this.accountId, this.balance);

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
      print('Error occurred-> insufficient balance');
    } else {
      balance -= amount;
      print("Withdrawal of \$$amount successful.");
    }
  }

  // Display function
  void displayAccountInfo() {
    print('The Account Id is: $accountId');
    print('The current Balance is: \$$balance');
    print('-------------------');
  }
}
