import 'bank_account_class.dart';

void main() {
  print('======== Start of the program =======');

  // Create object using default constructor
  BankAccount bankAccount1 = BankAccount('001', 2000);
  // Create object using named constructor
  BankAccount bankAccount2 = BankAccount.withOptionalBalance('002');


  // Display initial accounts information
  print("Account 1 Info:");
  bankAccount1.displayAccountInfo();

  print("Account 2 Info:");
  bankAccount2.displayAccountInfo();

  // Perform deposit and withdrawal operations for Account 1
  // First scenario
  bankAccount1.deposit(1000);
  print('The info of the first account after deposit(1000):');
  bankAccount1.displayAccountInfo();
  print('The info of the first account after withdraw(4000):');
  // insufficient balance
  bankAccount1.withdraw(4000);
  bankAccount1.displayAccountInfo();

  // Second scenario
  print('The info of the first account after second withdrawal(-500):');
  bankAccount1.withdraw(-500);
  bankAccount1.displayAccountInfo();

  // Perform deposit and withdrawal operations for Account 2
  // Third scenario
  bankAccount2.deposit(1000);
  print('The info of the second account after deposit(1000):');
  bankAccount2.displayAccountInfo();
  print('The info of the second account after withdraw(4000):');
  // Successful withdrawal
  bankAccount2.withdraw(500);
  bankAccount2.displayAccountInfo();

  print('======== End of the program =======');
}
