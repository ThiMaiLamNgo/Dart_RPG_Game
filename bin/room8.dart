import 'dart:io';
import 'get_number.dart';
void main(){
  Room8 room8 = Room8();
}
class Room8 {
  Room8(){
    GetNumber getInput = GetNumber();
    String input;
    print('''A killer here. You have to go back to the Room1 or you are out of the game. 
    \n1 to back to Room1 \n2 To be out of the game.''');
    getInput.getNumber(input);
    input = stdin.readLineSync();
    if (input == 1){
      print(input);
    }
  }
}