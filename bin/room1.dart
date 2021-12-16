import 'dart:io';
class Room1 {
  String yesOrNo;

  Room1() {
    print('''Welcome You are now in the reception
         \nR Turn right \nL Turn left. \nOther characters are not allowed.
        \n Enter here: ''');
    yesOrNo= stdin.readLineSync().toUpperCase();
    bool ans = true;
    while(ans){
      print('Enter R or L: ');
      yesOrNo= stdin.readLineSync().toUpperCase();
      if(yesOrNo == 'R'){
        print('Now you are in the Room 3');
        ans = false;
      } else if(yesOrNo == 'L'){
        print('Now you are in the Room 4');
        ans = false;
      }
    }
  }
}