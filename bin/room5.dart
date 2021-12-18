import 'dart:io';
import 'get_number.dart';
import 'room3.dart';
import 'room4.dart';
import 'room6.dart';

void main(){
  Room5();
}
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
        if(enter == 3){
          Room3();
        } else if(enter == 4){
          Room4();
        } else if(enter == 6){
          Room6();
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
      //If the user enter B; E or Y, it is added to the list named letters. The print the list to let user know what he entered.
      if(input =='B' || input =='Y' || input =='E'){
        letters.add(input);
        correctCounter ++;
        print('You entered: $letters. You need to enter ${3- correctCounter} more letters');
        // if user enters correct these three letters while loop ends.
        if(correctCounter == 3 && letters == ['B', 'Y', 'E'] || letters == ['B', 'E', 'Y'] ||  letters ==['E', 'Y', 'B'] || letters ==['E', 'B', 'Y'] ||  letters ==['Y', 'E', 'B'] ||  letters ==['Y', 'B', 'E']){
          answer = false;
          // once the while loop ends then user has to make a work from these three letters.
          getWord();
        }

      } else{
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
    bool answer = true;
    while (answer) {
      print("From these three letters make a word. Enter the word here: ");
      String input = stdin.readLineSync().toUpperCase();
      if(input == keyWord){
        answer = false;
        DateTime dt = DateTime.now();
        String timeEnd= "${dt.hour} : ${dt.minute} on ${dt.day}.${dt.month}.${dt.year}";
        print('YOU WON! S2 . \n You found the way out at $timeEnd');
      } else{
        counter ++;
        print('Try again. You have ${2 - counter} time to try it.');
        if(counter >= 2){
          print('You are back to the Room5. \n');
          Room5();
        }
      }
    }
  }
}