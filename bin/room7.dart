import 'dart:io';

import 'dart:math';

import 'room2.dart';
void main(){
  Room7 room7 = Room7();
}
class Room7 {


  Room7() {

    print ('''This is the center room. There are there three doors. The doors are numbered from 1 to 3.
    Each number leads to a different room. If you do not want to enter a number by yourself we have a small gift for you. We make a random.
    You enter Y for yes and N for no.''');
    bool answer= true;
    String yOrN;
    int intNumber;
    print("Enter Y or N: ");
    yOrN = stdin.readLineSync().toUpperCase();
    // if the user enter 1 or 2 or 3 he can continue, enter other numbers the game is over.
    if(yOrN == 'Y'){
      List <int> numbers = [1,2,3];
      numbers.shuffle();
      int randomNumber = numbers[0];
      numbers.removeAt(0);
      print(randomNumber);
    } else if(yOrN == 'N'){
      while (answer) {
        print("Enter the number: ");
        intNumber = int.parse(stdin.readLineSync());
        if (intNumber == 1) {
          answer = false;
          Room6 room6 = Room6();
        } else if (intNumber == 2) {
          answer = false;
          Room2 room2 = Room2();
        } else if (intNumber == 3) {
          answer = false;
          Room3 room3 = Room3();
        } else {
          print('Game over');
        }
    }
  }
}