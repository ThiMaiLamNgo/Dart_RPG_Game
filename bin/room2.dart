import 'get_number.dart';
import 'room1.dart';
import 'room3.dart';
import 'room5.dart';
class Room2 {
  Room2() {

    print('''There are there three numbers 1, 2 and 3 on table.
    \nChoose one of them to continue, other numbers make game over''');
    int intNumber = getNumber();
    if(intNumber == 1){
      print('You are in Room3');
      Room3 room3 = Room3();
    } else if(intNumber == 2){
      print('You are in Room5');
      Room5 room5 = Room5();
    } else if(intNumber == 3){
      print('You are in Room1');
      Room1 room1 = Room1();
    } else{
      print('Game over');
    }
  }
}