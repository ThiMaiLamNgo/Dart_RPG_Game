import 'dart:io';
/*
This function to check if user does not enter an integer the program will return 'Wrong format' and the user has to re-enter.
 */
int getNumber( ) {
  String input;
  bool answer= true;
  int intNumber;
  while (answer) {
    print("Enter an integer number: ");
    input = stdin.readLineSync();
    try {
      intNumber = int.parse(input);
      answer = false;
    }
    on FormatException {
      print('Wrong format! \n');
    }
  }
  return intNumber;
}