import 'dart:io';
/*
void main(){
  getNumber();
}

 */
int getNumber() {
  String input;
  //print('Enter a number here: ');
  bool answer= true;
  int intNumber;

  while (true) {
    print("Enter the number: ");
    input = stdin.readLineSync();
    try {
      intNumber = int.parse(input);
      break;
      //todo here
    }
    on FormatException {
      print('Wrong format');
    }
  }
}