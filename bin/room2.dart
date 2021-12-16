import 'dart:io';
class Room2 {


  Room2() {

    print('''This is coffee shop. There are there three numbers 1, 2 and 3 on table.
    \nChoose one of them to continue, other numbers make game over''');
    bool answer= true;
    String input;
    int intNumber;
    // ask user until he enters a number.
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
    // if the user enter 1 or 2 or 3 he can continue, enter other numbers the game is over.
    if(intNumber == 1){
      print('You are in Room3');
    } else if(intNumber == 2){
      print('You are in Room5');
    } else if(intNumber == 3){
      print('You are in Room1');
    } else{
      print('Game over');
    }
  }
}