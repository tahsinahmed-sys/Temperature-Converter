class BankAccount {
  String accountHolderName;
  int accountNumber;
  double _balance;

  BankAccount(this.accountHolderName, this.accountNumber, this._balance);

  void deposit(double amount) {
    _balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
    } else {
      print("Insufficient balance!");
    }
  }

  void displayAccountInfo() {
    print(
      "Account Holder: $accountHolderName "
          "Account Number: $accountNumber "
          "Balance: ${_balance.toStringAsFixed(0)}",
    );
  }
}

void main() {
  BankAccount account1 = BankAccount("Rahim", 1001, 5000);
  BankAccount account2 = BankAccount("Karim", 1002, 8000);

  account1.displayAccountInfo();

  account1.deposit(2000);
  print("After Deposit: Balance: ${account1._balance.toStringAsFixed(0)}");

  account1.withdraw(1500);
  print("After Withdrawal: Balance: ${account1._balance.toStringAsFixed(0)}");

  print("");

  account2.displayAccountInfo();
}