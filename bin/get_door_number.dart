import 'dart:io';
void main(){
  getDoorNumber();
}
int getDoorNumber() {
  //print('Enter a number here: ');
  bool input = true;
  String n1;
  while (true) {
    print("Enter the number: ");
    n1 = stdin.readLineSync();
    if (n1 == 'q') {
      break;
    }

    try {
      print(int.parse(n1));
      break;
    }
    on FormatException {
      print('Wrong format');
    }
    catch (e, s) {
      print('st wrong ... $e');
    }
  }
}