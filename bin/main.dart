import 'dart:io';
import 'dart_rpg_game.dart';
import 'user_name.dart';
import 'start.dart';
void main(List<String> arguments) {
  // TODO 1: Get user´s name
  getUserName getName = getUserName();
  // TODO 2: Choose 1 number to start Room1: 1,2,3,4.
  Start getstart = Start();
  //TODO 3: Room1 : 1,2:
  Room1 room1 = Room1();

}



//TODO 4: help him to random the number 1,2,3 if he wants.
//TODO 5: Ask a question if right go to m, wrong go to n. he can answer x times.
//TODO 6: doan chu bat ky - 1 mini Hangman
//TODo 7: fibonacci

/*
Choose assignment
You have the option to choose between assignment 1, 2 or 3. Let your instructor known in a timely manner which assignment you intend to complete as your final degree project.
1    Console: RPG Game
Often when you are stuck in a spooky mansion, you have to solve some puzzles to escape.There are dangers involved and maybe even ghosts!We want you to create a RPG game where a user can navigate a mansion through a CLI interface. The game should describe each room and offer the player interactions to choose from. The interactions are for example
 •Pick up item
•Move item
•Break item
•Move to next room
It is up to you how you want to describe the rooms, text, ASCII?
Minimum requirements (80%)
•Allow navigation between rooms, where descriptions are included.
•Allow user to select what to do in each room
•At least 1 locked door which requires the user to find the key in another room

Additional requirements (20%) - Pick one
•A room that has a trap–User needs to find and bring an object to defeat the trap.
A room that has a puzzle–For example - Read a book somewhere and there is a hint for a solution to apuzzle–Minigame?
 */