import 'dart:io';
class Room1 {
  String rightOrLeft;
  Room1() {
    print('''Welcome You are now in the reception
         \nR Turn right \nL Turn left. \nOther characters are not allowed.
        \n Enter here: ''');
    rightOrLeft= stdin.readLineSync().toUpperCase();
    bool ans = true;
    while(ans){
      print('Enter R or L: ');
      rightOrLeft= stdin.readLineSync().toUpperCase();
      if(rightOrLeft == 'R'){
        print('Now you are in the Room 3');
        ans = false;
      } else if(rightOrLeft == 'L'){
        print('Now you are in the Room 4');
        ans = false;
      }
    }
  }
}