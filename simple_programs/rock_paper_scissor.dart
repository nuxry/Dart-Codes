// A rock, paper, scissor game written in dart.

import 'dart:io';
import 'package:randt/randt.dart';
import 'package:ansicolor/ansicolor.dart';

void main(List<String> args) {
  int userpoints = 0;
  int botpoints = 0;

  dynamic grt(uP, bP) {
    if (uP < bP) {
      AnsiPen pen = AnsiPen()..red();
      print(pen("Current score: $uP : $bP"));
    } else if (uP > bP) {
      AnsiPen pen = AnsiPen()..green();
      print(pen("Current score: $uP : $bP"));
    } else if (uP == bP) {
      AnsiPen pen = AnsiPen()..blue();
      print(pen("Current score: $uP : $bP"));
    }
  }

  print("Rock, paper, scissor game!");
  do {
    List<String> botmoves = ["r", "p", "s"];
    String botmove = randItem(botmoves);
    print("Enter your move[r/p/s]");
    String? usermove = stdin.readLineSync();
    if (usermove != null) {
      usermove.toLowerCase();
      if (usermove == botmove) {
        print("Tie");
        grt(userpoints, botpoints);
      } else if (usermove == "r" && botmove == "s") {
        print("You got one point!");
        userpoints++;
        grt(userpoints, botpoints);
      } else if (usermove == "p" && botmove == "r") {
        print("You got one point!");
        userpoints++;
        grt(userpoints, botpoints);
      } else if (usermove == "s" && botmove == "p") {
        print("You got one point!");
        userpoints++;
        grt(userpoints, botpoints);
      } else if (botmove == "r" && usermove == "s") {
        print("Bot got one point!");
        botpoints++;
        grt(userpoints, botpoints);
      } else if (botmove == "p" && usermove == "r") {
        print("Bot got one point!");
        botpoints++;
        grt(userpoints, botpoints);
      } else if (botmove == "s" && usermove == "p") {
        print("Bot got one point!");
        botpoints++;
        grt(userpoints, botpoints);
      }
    } else {
      print("Enter a valid move");
    }
    if (userpoints == 5) {
      AnsiPen pen = AnsiPen()..green();
      print(pen("You won the game"));
      print(pen("Final score: $userpoints : $botpoints"));
      break;
    } else if (botpoints == 5) {
      AnsiPen pen = AnsiPen()..red();
      print(pen("Bot won the game!"));
      print(pen("Final score: $userpoints : $botpoints"));
      break;
    }
  } while (userpoints < 10 || botpoints < 10);
}
