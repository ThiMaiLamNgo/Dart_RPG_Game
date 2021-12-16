import 'dart:io';
class Room3 {
  int input;
  Room3() {
    print(''' This room exhibits polar bears related stuff. But it is locked. 
    You have to answer a question to open it. 
    \nHow heavy are polar bears? 
    P/S: Only an integer number is allowed.
     ''');
    while (true){
      print("Enter the number: ");
      input = int.parse(stdin.readLineSync());
      if (input >= 300 && input < 700) {
        print('Your answer is right. Polar bears are about 300kg to 700 kg.');
        print('You opened the room!');
        break;
      } else if (input < 300) {
        print('Enter a higher number.');
      } else{
        print('Your number is too high.');
      }
    }

    if (input >= 300 && input < 700) {
      print('goto the room5');
      //Room5 room5 = Room5();
    }
  }
}