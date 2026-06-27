import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int number = random.nextInt(100);

  print('Guess a number between 1 and 100');
  int attempts = 0;

  while (true) {
    print('Enter your guess');
    int guess = int.parse(stdin.readLineSync()!);
    attempts++;
    
    if(guess>number){
      print('High');
    }else if(guess<number){
      print('Low');
    }else{
      print('correct');
      break;
    }
  }
  print('Total attempts: $attempts');
}
