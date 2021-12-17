import 'get_number.dart';
import 'room4.dart';
/*
void main(){
  Room3 room3 = Room3();
}
 */
class Room3 {
  int input;
  Room3() {
    print(''' This room exhibits polar bears related stuff. But it is locked. 
    You have to answer a question to open it. 
    \nHow heavy are polar bears? 
    P/S: Only an integer number is allowed.
     ''');

    bool answer = true;
    while (answer){
      input = getNumber();
      if (input >= 300 && input < 700) {
        answer = false;
        print('Your answer is right. Polar bears are about 300kg to 700 kg.');
        print('You opened the room and get the letter E!\n You are in Room4.');
        Room4();
      } else if (input < 300) {
        print('Enter a higher number.');
      } else{
        print('Your number is too high.');
      }
    }
  }
}