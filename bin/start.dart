import 'get_number.dart';
import 'room1.dart';
import 'room8.dart';

class Start{
  int start;
  Start(){
    print('''You are inside the Perlan. Choice 1 or 2 to start your journey. 
         \n1 Go ahead. \n2 Turn right.
        \nOther numbers to get out of the game.\n''');
    start = getNumber();
    if(start == 1){
      print('You are in Room1');
      Room1();
    } else if(start == 2){
      print('You are in Room8');
      Room8();
    } else {
      print('You are out of the game.');
    }
  }
}
