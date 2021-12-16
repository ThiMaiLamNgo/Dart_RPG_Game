import 'dart:io';
import 'room2.dart';
import 'room1.dart';
import 'room3.dart';

class Start{
  int start;
  Start(){
    print('''You are in a room inside the Perlan. There are two ways you can choice. 
         \n1 Go ahead. \n3 Turn right.
        \nEnter 1 or 2 to start your journey. and other numbers to get out of the game. ''');
    start = int.parse(stdin.readLineSync());
    if(start == 1){
      print('You are in Room1');
      Room1 room1 = Room1();
    } else if(start == 2){
      print('You are in Room8');
      Room8 room8 = Room8();
    } else {
      print('You are out of the game.');
    }

  }
}
