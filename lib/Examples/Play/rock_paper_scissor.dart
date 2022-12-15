// import 'dart:io';
// import 'dart:math';
//
// import 'package:flutter/cupertino.dart';
//
// class RockPaperScissor extends StatelessWidget {
//   const RockPaperScissor({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: Center(
//       child: Text(game()),
//     ));
//   }
// }
//
// String game() {
//   // Create a list of moves.
//   final moves = ['rock', 'paper', 'scissors'];
//
//   // Create a random number generator.
//   final random = Random();
//
//   // Play the game.
//   while (true) {
//     // Get the human move.
//     print('Enter your move (rock, paper, or scissors):');
//     final humanMove = stdin.readLineSync()?.toLowerCase();
//
//     // Check if the human move is valid.
//     if (!moves.contains(humanMove)) {
//       print('Invalid move!');
//       continue;
//     }
//
//     // Get the computer move.
//     final computerMove = moves[random.nextInt(moves.length)];
//     print('Computer plays $computerMove');
//
//     // Determine the winner.
//     if (humanMove == computerMove) {
//       print('It\'s a tie!');
//     } else if ((humanMove == 'rock' && computerMove == 'scissors') ||
//         (humanMove == 'paper' && computerMove == 'rock') ||
//         (humanMove == 'scissors' && computerMove == 'paper')) {
//       print('You win!');
//     } else {
//       print('Computer wins!');
//     }
//   }
// }
