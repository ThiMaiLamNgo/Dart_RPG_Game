import 'dart:io';
import 'get_number.dart';
import 'room1.dart';
import 'start.dart';
/*
void main(){
  Room8 room8 = Room8();
}

 */
class Room8 {
  Room8(){
    print('''A killer here. You have to go back to the Room1 or you are out of the game. 
    \n1 to back to Room1 \n2 To go back to start.''');
    int input = getNumber();
    if (input == 1){
      Room1();
    } else if (input == 2){
      print('The killer is here. You are back to start');
      Start();
    }
  }
}