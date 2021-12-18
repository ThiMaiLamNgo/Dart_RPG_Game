import 'dart:io';
import 'room7.dart';

class Room1 {
  String yesOrNo;
  Room1() {
    print('''Room1: Welcome to the first task. The door to the next room is closed. So you have to answer the following question.
         \nIs 1 the Fibonacci of 1? 
        ''');
    bool ans = true;
    while (ans) {
      print('Enter Y or N: ');
      yesOrNo = stdin.readLineSync().toUpperCase();
      if (yesOrNo == 'Y') {
        print('Yes. The Fibonacci of 1 is 1. Now you are in the Room7');
        ans = false;
        Room7();
      } else if (yesOrNo == 'N') {
        ans = false;
        print('Wrong answer! You are still in the Room1. \n');
        Room1();
      }
      else{
        print('Only Y or N please');
      }
    }
  }
}