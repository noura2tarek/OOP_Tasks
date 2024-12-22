import 'bank_account_class.dart';

void main() {
  print('======== Start of the program =======');
  BankAccount bankAccount = BankAccount('001');
  BankAccount bankAccount2 = BankAccount.initializeBalance('002');

  // Perform deposit and withdrawal operations for Account 1
  // First scenario
  bankAccount.deposit(1000);
  print('The info of the first account after deposit:');
  bankAccount.displayAccountInfo();
  print('The info of the first account after withdraw(500):');
  bankAccount.withdraw(500);
  bankAccount.displayAccountInfo();

  // Second scenario
  print('The info of the first account after second withdrawal(-500):');
  bankAccount.withdraw(-500);
  bankAccount.displayAccountInfo();

  // Perform deposit and withdrawal operations for Account 2
  // Third scenario
  bankAccount2.deposit(2000);
  print('The info of the second account after deposit:');
  bankAccount2.displayAccountInfo();
  print('The info of the second account after withdraw(3000):');
  bankAccount2.withdraw(3000);
  bankAccount2.displayAccountInfo();

  print('======== End of the program =======');
}
