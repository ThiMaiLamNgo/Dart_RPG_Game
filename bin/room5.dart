import 'dart:io';
import 'get_number.dart';
import 'room3.dart';
import 'room4.dart';
import 'room6.dart';

class Room5 {
  String keyWord = 'BYE';
  Room5() {
    print(
        '''Room5: 
    The door is closed. It needs three letters - three keys to open the door. 
    One key is in Room6, one in Room4 and the last one is in the Room3.
    If you finished them enter Y to continue.
    If you have not fished them choose N and then 3; 4 or 6 to come back:
    \n3 Room3. \n4 Room4. \n6 Room6.
    ''');
    bool ans = true;
    while (ans) {
      print('Did you went to these rooms? Enter Y for finished or N for not: ');
      String yesOrNo = stdin.readLineSync().toUpperCase();
      if (yesOrNo == 'Y') {// User enters Y if he knows the letters then he has to enter these letters here.
        ans = false;
        getLetters();//This function get letter from the user.
      } else if (yesOrNo == 'N') {// User enters N and chooses the room he want to come back.
        int enter = getNumber();
        ans = false;
        if(enter == 3){
          Room3();
        } else if(enter == 4){
          Room4();
        } else if(enter == 6){
          Room6();
        } else{
          print('Game over.');
        }
      }
    }
  }
  getLetters(){
    //this function get letter from user.
    bool answer = true;
    String input;
    int correctCounter = 0;
    int incorrectCounter = 0;
    List<String> letters = [];
    print('You fished them.');
    while (answer) {
      print("Do you remember these three letters? Please enter them here: ");
      input = stdin.readLineSync().toUpperCase();
      //If the user enter B; E or Y, at the first time it is added to the list named letters and the variable correctCounter++. The print the list to let user know what he entered.
      if(input =='B' || input =='Y' || input =='E'){
        if (!letters.contains(input)){
          letters.add(input);
          correctCounter ++;
          print('You entered: $letters. You need to enter ${3- correctCounter} more letters');
          //Ef user enters the ri
          if(correctCounter == 3){
            answer = false;
            input = getWord();
          }
        } else{//If the user enter B; E or Y again he will get 'You have entered this letter'.
          print('You have entered this letter');
        }
        // if user enters correct these three letters while loop ends.
      } else{
        //if user enters incorrect letter he gets 'Incorrect!' and the variable incorrectCounter++. if incorrectCounter > 4 the use has to go back to Room6.
        print('Incorrect!');
        incorrectCounter++;
        if(incorrectCounter >= 4){
          answer = false;
          print('You did not remember them.You are back to Room6. \n');
          Room6();
        }
      }
    }
  }
  //This function take a word from use if his word is the same keyword then the user wins. Otherwise he comes back to Room5 again.
  getWord(){
    int counter = 0;
    bool ans = true;
    while (ans) {
      print("From these three letters make a word. Enter the word here: ");
      String input = stdin.readLineSync().toUpperCase();
      if(input == keyWord){
        ans = false;
        DateTime dt = DateTime.now();
        String timeEnd= "${dt.hour}:${dt.minute} on ${dt.day}.${dt.month}.${dt.year}";
        print('YOU WON! S2 . \n You found the way out at $timeEnd');
      } else{
        counter ++;
        print('Try again. You have ${2 - counter} time to try it.');
        if(counter >= 2 && input != keyWord){
          print('You are back to the Room5. \n');
          Room5();
        }
      }
    }
  }
}