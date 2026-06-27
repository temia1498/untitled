import 'dart:io';

void main(){

  // print('Enter counsumed units');
  // int units = int.parse(stdin.readLineSync()!);
  //
  // int bill;
  //
  // if(units<=100){
  //   bill = units *5;
  // }else if(units<200){
  //   bill = (100*5) + ((units-100)*8);
  // }else{
  //   bill = (100*5) + (100*8) + ((units-200)*10);
  // }
  //
  // print('your bill is $bill');




  print('Enter temperature');
  int temp = int.parse(stdin.readLineSync()!);


  if(temp>35){
    print('hot');
  }else if(temp>20 && temp<35){
   print('warm');
  }else{
    print('cold');
  }

}