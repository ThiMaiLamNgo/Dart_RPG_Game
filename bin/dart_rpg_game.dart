import 'dart:io';

import 'get_door_number.dart';
//import 'get_door_number.dart';
//import 'user_name.dart';
void main(List<String> arguments) {
  Room3();
}
class Room3 {


  Room3() {

    print(''' This room exhibits bear related stuff. But it is locked. 
    \nYou have to answer a question to open it. 
    
     ''');
    bool answer= true;
    String input;
    int intNumber;
    while (true) {
      print("Enter the number: ");
      input = stdin.readLineSync();
      try {
        intNumber = int.parse(input);
        break;
        //todo here
      }
      on FormatException {
        print('Wrong format');
      }
    }

    if(intNumber == 1){
      print('You are in Room3 ');
    } else if(intNumber == 2){
      print('You are in Room5 ');
    } else if(intNumber == 3){
      print('You are in Room1 ');
    } else{
      print('Game over');
    }
  }
}