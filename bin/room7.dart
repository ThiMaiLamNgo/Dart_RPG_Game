import 'dart:io';
import 'dart:math';
import 'get_number.dart';
import 'room2.dart';
import 'room3.dart';
import 'room6.dart';
/*
void main(){
  Room7 room7 = Room7();
}
 */
class Room7 {
  Room7() {

    print ('''There are there three doors. The doors are numbered from 1 to 3.
    \nIf you do not want to enter a number by yourself we have a small gift for you. We make a random. 
    \nNow you just enter Y for yes and N for no to random.''');
    bool answer= true;
    String yOrN;
    int intNumber;
    while(answer){
      print("Enter Y or N: ");
      yOrN = stdin.readLineSync().toUpperCase();
      // if the user enter 1 or 2 or 3 he can continue, enter other numbers the game is over.
      if(yOrN == 'Y'){
        int randomNumber = Random().nextInt(3) + 1; //Random number from 1 to 3.
        print('The random number is $randomNumber');
        if (randomNumber == 1) {
          print('You are in Room6. \n');
          answer = false;
          Room6();
        } else if (randomNumber == 2) {
          print('You are in Room2. \n');
          answer = false;
          Room2();
        } else if (randomNumber == 3) {
          print('You are in Room3.\n');
          answer = false;
          Room3();
        } else {
          print('Game over');
        }
      } else if(yOrN == 'N'){
        while (answer) {
          print('\nEach number leads to a different room. Number 1 to Room6. 2 to Room2. 3 to Room3.\n ');
          intNumber = getNumber();
          if (intNumber == 1) {
            answer = false;
            Room6();
          } else if (intNumber == 2) {
            answer = false;
            Room2();
          } else if (intNumber == 3) {
            answer = false;
            Room3();
          } else {
            print('Game over');
          }
        }
      }
    }
  }
}