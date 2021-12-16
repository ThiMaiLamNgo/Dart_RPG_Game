import 'dart:math';

void main(){
  List <int> numbers = [1,2,3];
  numbers.shuffle();
  int randomNumber = numbers[0];
  numbers.removeAt(0);
  print(randomNumber);
}