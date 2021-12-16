import 'dart:io';
class GetNumber{
  getNumber( String input) {

    //print('Enter a number here: ');
    bool answer= true;
    int intNumber;

    while (true) {
      print("Enter the number: ");
      input = stdin.readLineSync();
      try {
        intNumber = int.parse(input);
        break;
      }
      on FormatException {
        print('Wrong format');
      }
    }
  }
}
