import 'get_number.dart';
import 'room4.dart';

class Room3 {
  int input;
  Room3() {
    print('''Room3: A big polar bear is sleeping. The next door is locked. You have to answer a question to open it. And get the second letter.
    \nHow heavy are polar bears? P/S: Only an integer number is allowed.
     ''');
    bool answer = true;
    while (answer){
      input = getNumber();
      if (input >= 300 && input < 700) {
        answer = false;
        print('Your answer is right. Polar bears are about 300kg to 700 kg. You opened the door of Room4.');
        print('\n You get the letter E \n');
        Room4();
      } else if (input < 300) {
        print('Enter a higher number.');
      } else if (input > 700){
        print('Your number is too high.');
      }
    }
  }
}