import 'dart:io';

import 'room3.dart';
import 'room7.dart';
class Room1 {
  String yesOrNo;

  Room1() {
    print('''Welcome to the first task. The door to the next room is closed. So you have to answer the following question.
         \nIs 1 the Fibonacci of 1? 
        ''');
    bool ans = true;
    while (ans) {
      print('Enter Y or N: ');
      yesOrNo = stdin.readLineSync().toUpperCase();
      if (yesOrNo == 'Y') {
        print('Now you are in the Room7');
        ans = false;
        Room7 room7 = Room7();
      } else if (yesOrNo == 'N') {
        print('Now you are still in the Room1');
        ans = false;
        Room1 room1 = Room1();
      }
    }
  }
}