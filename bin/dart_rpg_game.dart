import 'dart:io';
import 'user_name.dart';
void main(List<String> arguments) {
  getStart getstart = getStart();
}
class getStart{
  int start;
  getStart(){
    print('Enter 1; 2; 3 or 4 to start your journey.'
        ' \n1 Go ahead. \n2 Turn left. \n3 Turn right. \n4 The door is closed.');
    start = int.parse(stdin.readLineSync());
    print('ok');
  }
}
