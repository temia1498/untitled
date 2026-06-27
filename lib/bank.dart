import 'dart:io';

void main() {



  Bank bank = Bank();

  void runifointtrue(){

    print('what function you want to perform \n 1.TotalBalance \n 2.Withdraw \n 3.Deposit',);

    int value = int.parse(stdin.readLineSync()!);
    if (value == 1) {
      bank.balanceInquery();
    } else if (value == 2) {
      print('how much you want to withdraw');
      double balance = double.parse(stdin.readLineSync()!);
      print(bank.withdraw(balance));
    } else if (value == 3) {
      print('how much you want to deposit');
      double balance = double.parse(stdin.readLineSync()!);
      print(bank.deposit(balance));
    }
  }



  for(int x=0; x<3; x++) {
    print('Enter PIN');
    int enteredPin = int.parse(stdin.readLineSync()!);

      if(bank.verifyPin(enteredPin)){
        print('Pin Verified');
        runifointtrue();
        return ;


      } else {
        print('incorrect pin');
    }
   }


  }

class Bank {
  // String pin = '4321';
  int pin = 4321;
  double balance = 5000;

  bool verifyPin(int enteredPin) {
   return enteredPin==pin;

  }

  void balanceInquery() {
    print('your total balance is $balance');
  }

  double withdraw(double withdraw) {
    balance = balance - withdraw;
    print('your balance is');
    return balance;
  }

  double deposit(double deposit) {
    balance = balance + deposit;
    print('your balance is');
    return balance;
  }
}
