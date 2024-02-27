import 'dart:io';

void main() {
  print('Welcome to the Calculator App');
  bool continueCalculating = true;

  while (continueCalculating) {
    stdout.write('Enter the first number: ');
    double firstNumber = double.parse(stdin.readLineSync()!);

    stdout.write('Enter the second number: ');
    double secondNumber = double.parse(stdin.readLineSync()!);

    stdout.write('Enter the operator (+, -, *, /): ');
    String operator = stdin.readLineSync()!;

    double result = calculate(firstNumber, secondNumber, operator);
    print('Result: $result');

    stdout.write('Do you want to perform another calculation? (yes/no): ');
    String? choice = stdin.readLineSync();

    if (choice != 'yes') {
      continueCalculating = false;
    }
  }
  print('Goodbye!');
}

double calculate(double a, double b, String operator) {
  switch (operator) {
    case '+':
      return a + b;
    case '-':
      return a - b;
    case '*':
      return a * b;
    case '/':
      if (b == 0) {
        print('Error: Cannot divide by zero');
        return double.nan; // return NaN for division by zero
      }
      return a / b;
    default:
      print('Error: Invalid operator');
      return double.nan; // return NaN for invalid operator
  }
}
