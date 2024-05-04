import 'dart:io';
import 'dart:core';

bool winner = false;
bool isXturn = true;
int moveCount = 0;

List<String> values = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
List<String> combinations = ['123', '456', '789', '147', '258', '369', '159', '357'];


void main() {
  print('Welcome to Tik Tac Toe');
  print('Player 1 is X and Player 2 is O');
  print('The board is as follows:');
  print(' 1 | 2 | 3 ');
  print('-----------');
  print(' 4 | 5 | 6 ');
  print('-----------');
  print(' 7 | 8 | 9 ');
  print('');
  print('Player 1 starts the game');
  print('');
  printBoard(values);
  print('');
  while (!winner && moveCount < 9) {
    print('Player ${isXturn ? 1 : 2}, enter your move: ');
    int move = int.parse(stdin.readLineSync()!);
    if (move < 1 || move > 9 || values[move - 1] == 'X' || values[move - 1] == 'O') {
      print('Invalid move. Try again.');
      continue;
    }
    values[move - 1] = isXturn ? 'X' : 'O';
    printBoard(values);
    winner = checkWin(values);
    isXturn = !isXturn;
    moveCount++;
  }
  if (winner) {
    print('Player ${isXturn ? 2 : 1} wins!');
  } else {
    print('It\'s a draw!');
  }
}

void printBoard(List<String> board) {
  print('');
  print(' ${board[0]} | ${board[1]} | ${board[2]} ');
  print('-----------');
  print(' ${board[3]} | ${board[4]} | ${board[5]} ');
  print('-----------');
  print(' ${board[6]} | ${board[7]} | ${board[8]} ');
}

bool checkWin(List<String> board) {
  for (String combination in combinations) {
    if (board[int.parse(combination[0]) - 1] == board[int.parse(combination[1]) - 1] &&
        board[int.parse(combination[1]) - 1] == board[int.parse(combination[2]) - 1]) {
      return true;
    }
  }
  return false;
}
