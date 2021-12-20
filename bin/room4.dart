import 'dart:io';
import 'room6.dart';
import 'room5.dart';

//TODO 6: Room4 leads to Room5. At Room4 the user has to answer a question 'the most used word in the last 2 years?' if his answer is correct he gets the last letter. Then he goes to Room5.
class Room4 {
  String word = 'covid';
  List<String> displayWord = [];
  Room4(){
    print('''Room4: This room has the last key to open the door in Room5. You have to guess a word. 
    \nThis word is the most used word in the last 2 years.
    \nThe word has ${word.length}  letters''');
    displayWord = ('_' * (word.length)).split('');
    print(displayWord.join(''));
    String input;
    bool answer= true;
    int incorrect = 0;
    while (answer) {
      print("Enter a letter here: ");
      input = stdin.readLineSync().toLowerCase();
        if(input =='c' || input =='o' || input =='v' || input =='i' || input =='d'){
          for(int i = 0; i < word.length; i++) {
            if (word[i] == input) {
              displayWord[i] = input;
              print(displayWord);
            }
          }
          if (displayWord.join('') == word) {
            answer = false;
            print('Bingo! The word of the year is ${displayWord.join('').toUpperCase()}');
            print('\nThe key is a letter: Y. \n You are in Room5\n');
            Room5();
          }
        } else {
          incorrect ++;
          print('Enter another letter.');
          if(incorrect >= 5){
            print('You have guessed wrong $incorrect times.');
            print('You are back to Room6\n');
            Room6();
          }
        }
    }
  }
}