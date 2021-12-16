import 'dart:io';
void main(){
  Room6 room6 = Room6();
}
class Room6 {
  int input;
  bool answer = true;
  Room6() {
    print(''' This room has a letter that help you to open the door in Room5. 
    You have to answer the following question.
    \nWhat is the Fibonacci of 5? 
    P/S: Only an integer number is allowed.
     ''');

    while (answer) {
      print("Enter the number: ");
      input = int.parse(stdin.readLineSync());
      if (input == 120) {
        answer = false;
        print('Your answer is right. The Fibonacci of 5 is 120.');
        print('You got it. The letter is V');

        Room5 room5 = Room5;
      } else{
        print('It has to be another integer number!');
      }
    }
  }
}