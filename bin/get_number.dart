import 'dart:io';

int getNumber( ) {
  String input;
  //print('Enter a number here: ');
  bool answer= true;
  int intNumber;

  while (answer) {
    print("Enter the number: ");
    input = stdin.readLineSync();
    try {
      intNumber = int.parse(input);
      answer = false;

    }
    on FormatException {
      print('Wrong format');
    }
  }
  return intNumber;
  //print(intNumber);

}

