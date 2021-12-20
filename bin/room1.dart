import 'dart:io';
import 'room7.dart';

//TODO 1: Room1: Yes/No question. choose y go to Room7. Choose N - Wrong answer, the user still in Room1 and answers it again.
class Room1 {
  String yesOrNo;
  Room1() {
    print('''Room1: Welcome to the first task. The door to the next room is closed. So you have to answer the following question.
         \nIs 1 the Fibonacci of 1? \n
        ''');
    bool ans = true;
    while (ans) {
      print('Enter Y or N: ');
      yesOrNo = stdin.readLineSync().toUpperCase();
      if (yesOrNo == 'Y') {
        print('Yes. The Fibonacci of 1 is 1. Now you are in the Room7. \n');
        ans = false;
        Room7();
      } else if (yesOrNo == 'N') {
        ans = false;
        print('Wrong answer! You are still in the Room1. \n');
        Room1();
      }
      else{
        print('Only Y or N please');
      }
    }
  }
}