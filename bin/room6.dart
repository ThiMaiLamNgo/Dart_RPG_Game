import 'get_number.dart';
import 'room3.dart';

//TODO 4: Room6 user has to answer what the Fibonacci of 5? if he answers correctly he will get the letter is B and leads to Room3.
class Room6 {
  int input;
  bool answer = true;
  Room6() {
    print('''Room6: This room has one of three letters that helps you to open the door in Room5. 
    You have to answer the following question.
    \nWhat is the Fibonacci of 5? 
    P/S: Only an integer number is allowed.\n
     ''');
    while (answer) {
      input = getNumber();
      if (input == 120) {
        answer = false;
        print('Your answer is right. The Fibonacci of 5 is 120. \nAnd the letter is B');
        print('You are come in the Room3. \n');
        Room3();
      } else{
        print('It has to be another integer number!');
      }
    }
  }
}