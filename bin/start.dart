import 'dart:io';
import 'room1.dart';
import 'room8.dart';

class Start{
  int start;
  Start(){
    print('''You are in a room inside the Perlan. There are two ways you can choice to start. 
         \n1 Go ahead. \n2 Turn right.
        \nEnter 1 or 2 to start your journey. And other numbers to get out of the game. ''');
    start = int.parse(stdin.readLineSync());
    if(start == 1){
      print('You are in Room1');
      Room1();
    } else if(start == 2){
      print('You are in Room8');
      Room8();
    } else {
      print('You are out of the game.');
    }

  }
}
