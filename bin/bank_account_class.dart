class BankAccount {
  //Fields
  String accountId = '';
  double balance = 0;

  // Constructors
  BankAccount(this.accountId);

  BankAccount.initializeBalance(this.accountId) {
    balance = 0;
  }

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
    }
  }

  // Display function
  void displayAccountInfo() {
    print('The Account Id is: $accountId');
    print('The current Balance is: $balance');
    print('-------------------');
  }
}
