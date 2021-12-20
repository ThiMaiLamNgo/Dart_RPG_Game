import 'dart:io';
import 'dart:math';
import 'get_number.dart';
import 'room2.dart';
import 'room6.dart';

//TODO 2: At Room7 there are three ways. 1 to Room6, 2 to Room2 and other numbers to quit game. Here you can choose to random(1 and 2) or user choices number by himself.
class Room7 {
  Room7() {
    print (''' Room7: There are there three choices. 1 go to Room6, 2 to Room2 and other numbers game over.
    \nIf you are confused we can make a random. 
    \nYou just enter Y for yes to make a random and N for no.''');
    bool answer= true;
    String yOrN;
    int intNumber;
    while(answer){
      print("Enter Y or N: ");
      yOrN = stdin.readLineSync().toUpperCase();
      if(yOrN == 'Y'){ // Enter Y to random number 1 to 2
        int randomNumber = Random().nextInt(2) + 1; //Random number from 1 to 2.
        print('The random number is $randomNumber');
        if (randomNumber == 1) {
          print('You are in Room6. \n');
          answer = false;
          Room6();
        } else if (randomNumber == 2) {
          print('You are in Room2. \n');
          answer = false;
          Room2();
        } else {
          print('Game over');
        }
      } else if(yOrN == 'N'){ // User enters N and chooses number 1;2 or another number by himself.
        while (answer) {
          print('\nYou want to choice by yourself. Each number leads to a different room. \n1 To Room6. \n2 To Room2. \n3 Other number to quit game.\n ');
          intNumber = getNumber();
          if (intNumber == 1) {
            answer = false;
            print('You are in Room6. \n');
            Room6();
          } else if (intNumber == 2) {
            answer = false;
            print('You are in Room2. \n');
            Room2();
          } else {
            answer = false;
            print('Game over');
          }
        }
      }
    }
  }
}