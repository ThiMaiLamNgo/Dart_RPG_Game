import 'dart:io';

import 'room5.dart';
/*
void main(){
  Room4 room4 = Room4();
}
 */
class Room4 {
  String word = 'covid';
  List<String> displayWord = [];

  Room4(){
    print('''You have to guess a word. This word is the most used word in the last 2 years.
    \nThe word has ${word.length}  letter''');
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
            print('\nThe key is a letter: Y. \n You are in Room5');
            Room5();
          }
        } else {
          incorrect ++;
          print('Enter another letter.');
          if(incorrect >= 5){
            print('You have guessed wrong $incorrect times.');
            print('Here is the hint: The word is the name of a disease');
          }
        }
    }
  }
}