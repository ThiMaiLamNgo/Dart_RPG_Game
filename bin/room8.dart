import 'get_number.dart';
import 'room1.dart';
import 'room6.dart';
import 'start.dart';

class Room8 {
  Room8(){
    print('''Room8: A ghost is here. You have choose quickly. 
    \n1 Back to Room1 \n2 Back to start. \n3 Go to Room6. \nOther numbers to get out of the game.''');
    int input = getNumber();
    if (input == 1){
      Room1();
    } else if (input == 2){
      print('You are back to start.');
      Start();
    }else if (input == 3){
      print('You go to Room6.');
      Room6();
    } else{
      print('You are out of the game.');
    }
  }
}