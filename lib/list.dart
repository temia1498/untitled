import 'dart:io';

void main() {
  List number = [];
  print('how many numbers you want to enter?');

  int x = int.parse(stdin.readLineSync()!);
  for (int n = 0; n < x; n++){
    print('enter number: ${n+1}');
    number.add(int.parse(stdin.readLineSync()!));
  }
int largest= number[0];
for(int n=1; n<number.length; n++ ){
  if(number[n] >largest){
    largest=number[n];
  }
}
print('the largest number is $largest');
}
