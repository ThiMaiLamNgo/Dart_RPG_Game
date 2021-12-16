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
    \nDo you want to enjoy an amazing trip in this house?
    \nThe time you come is $timeNow.''');

  }

}

