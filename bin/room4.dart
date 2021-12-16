import 'dart:io';

import 'dart:io';

import 'room3.dart';
class Room1 {
  String rightOrLeft;
  Room1() {
    print('''Welcome to the first task.
         \nR Turn right \nL Turn left. \nOther characters are not allowed.
        ''');
    bool ans = true;
    while(ans){
      print('Enter R or L: ');
      rightOrLeft= stdin.readLineSync().toUpperCase();
      if(rightOrLeft == 'R'){
        print('Now you are in the Room 3');
        ans = false;
        Room3 room3 = Room3();
      } else if(rightOrLeft == 'L'){
        print('Now you are in the Room 4');
        ans = false;
      }
    }
  }
}