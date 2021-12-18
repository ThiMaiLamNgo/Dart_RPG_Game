import 'get_number.dart';
import 'room1.dart';
import 'room7.dart';

class Room2 {
  Room2() {
    print('''Room2: There are there three numbers 1, 2 and 3 on table.
    \nChoose one of them to continue, other numbers make game over.
    \n1 To Room1. \n2 To Room7. \n Other number Game over.''');
    int intNumber = getNumber();
    if(intNumber == 1){
      print('You are in Room1');
      Room1();
    } else if(intNumber == 2){
      print('You are in Room6');
      Room7();
    } else{
      print('Game over');
    }
  }
}