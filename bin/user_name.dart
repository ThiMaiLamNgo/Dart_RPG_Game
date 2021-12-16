import 'dart:io';

class getUserName{
  String name= '';

  getUserName(){
    while (name.isEmpty) {
      print('What is your name?');
      name = stdin.readLineSync();
    }

    DateTime ct = DateTime.now();
    String timeNow= "${ct.hour} : ${ct.minute} on ${ct.day}.${ct.month}.${ct.year}}";
    print('''Hello $name.\nWelcome to the Perlan - spooky mansion!
    \nTime and date now is $timeNow.
    \nThere are many people come in this house but noone finds the way to exit. Can you help them to find out it?
     ''');

  }

}

