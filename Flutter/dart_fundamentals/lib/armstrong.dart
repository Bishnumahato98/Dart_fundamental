import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Enter a number: ");
  int num = int.parse(stdin.readLineSync()!);
  int temp = num;
  int sum = 0;
  int digits = num.toString().length;

  while (temp > 0) {
    int digit = temp % 10;
    sum += pow(digit, digits).toInt();
    temp ~/= 10;
  }

  if (num == sum) {
    print("$num is an Armstrong number.");
  } else {
    print("$num is not an Armstrong number.");
  }
}
