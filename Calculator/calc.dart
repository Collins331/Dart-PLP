import 'dart:io';

void main() {
  print("Welcome to the Calculator");
  sleep(Duration(seconds: 3));
  print("Please enter the first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter the second number: ");

  double num2 = double.parse(stdin.readLineSync()!);

  print("Enter the operation you want to perform: (+, -, *, /, %)");
  String operation = stdin.readLineSync()!;

  switch(operation) {
    case "+":
      print("The result is: ${num1 + num2}");
      break;
    case "-":
      print("The result is: ${num1 - num2}");
      break;
    case "*":
      print("The result is: ${num1 * num2}");
      break;
    case "/":
      if (num2 == 0) {
        print("Cannot divide by zero");
        break;
      }
      print("The result is: ${num1 / num2}");
      break;
    case "%":
      print("The result is: ${num1 % num2}");
      break;
    default:
      print("Invalid operation");
  }
}