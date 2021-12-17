import 'get_number.dart';
import 'room5.dart';
/*
void main(){
  Room6 room6 = Room6();
}
 */
class Room6 {
  int input;
  bool answer = true;
  Room6() {
    print(''' This room has one of three keys that helps you to open the door in Room5. 
    You have to answer the following question.
    \nWhat is the Fibonacci of 5? 
    P/S: Only an integer number is allowed.
     ''');
    while (answer) {
      print("Enter the number: ");
      input = getNumber();
      if (input == 120) {
        answer = false;
        print('Your answer is right. The Fibonacci of 5 is 120.');
        print('You got it. The letter is B. \nYou are come in the Room5. \n');
        Room5();
      } else{
        print('It has to be another integer number!');
      }
    }
  }
}