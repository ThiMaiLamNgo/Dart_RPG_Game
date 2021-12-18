import 'user_name.dart';
import 'start.dart';
void main(List<String> arguments) {
  GetUserName();
  Start();
}
// TODO START: Get user´s name
// TODO START: Choose 1 number to start Room1 or Room8 or Game over.
//TODO 1: Room1: Yes/No question. choose y go to Room7. Choose N - Wrong answer, the user still in Room1 and answers it again.
//TODO 2: At Room7 there are three ways. 1 to Room6, 2 to Room2 and other numbers to quit game. Here you can choose to random(1 and 2) or user choices number by himself.
//TODO 3: Room2 leads to Room1 or Room7.
//TODO 4: Room6 user has to answer what the Fibonacci of 5? if he answers correctly he will get the letter is B and leads to Room3.
//TODO 5:  Room3 user answer a question if correct he gets the second letter E and goes to Room4.
//TODO 6: Room4 leads to Room5. At Room4 the user has to answer a question 'the most used word in the last 2 years?' if his answer is correct he gets the last letter. Then he goes to Room5.
//TODO 7: Room5  The user enters the three letters if he knows otherwise he has to go back to Room6.