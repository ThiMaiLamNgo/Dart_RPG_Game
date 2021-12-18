import 'dart:io';

class GetUserName{
  String name= '';
  GetUserName(){
    while (name.isEmpty) {
      print('What is your name?');
      name = stdin.readLineSync();
    }
    DateTime dt = DateTime.now();
    String timeStart= "${dt.hour} : ${dt.minute} on ${dt.day}.${dt.month}.${dt.year}";
    print('''Hello $name.\nWelcome to the Perlan - spooky mansion!
    \nTime and date now is $timeStart.
    \nThere are many people come in this house but no one finds the way to exit. 
    \nCan you help them to find out it?
     ''');
  }
}

