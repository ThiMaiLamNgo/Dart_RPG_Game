import 'dart:io';
import 'dart:convert';

class getUserName{
  String name= '';

  getUserName(){


    while (name.isEmpty ) {
      print('What is your name?');
      name = stdin.readLineSync();
    }
    print('Hello $name. \nWelcome to the Perlan - spooky mansion!');
  }
}

