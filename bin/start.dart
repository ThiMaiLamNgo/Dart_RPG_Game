import 'dart:io';
import 'room2.dart';
import 'room1.dart';

import 'dart_rpg_game.dart';

class Start{
  int start;
  Start(){
    print('''You are in the front of Perlan. There are three ways to entry. 
         \n1 Go ahead. \n2 Turn left. \n3 Turn right.
        \nEnter 1; 2 or 3 and other numbers to out of the game. Enter a number to start your journey.''');
    start = int.parse(stdin.readLineSync());
    if(start == 1){
      print('You are in Northlight show');
      Room1 room1 = Room1();
    } else if(start == 2){
      print('You are in bears\´s show');

    } else if(start == 3){
      print('You are in Coffee shop');
      Room2 room2 = Room2();
    } else {
      print('You get out of the game');
    }

  }
}
