import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int num = int.parse(stdin.readLineSync()!);
  int temp = num;
  int reverse = 0;

  while (temp > 0) {
    int digit = temp % 10;
    reverse = reverse * 10 + digit;
    temp ~/= 10;
  }

  if (num == reverse) {
    print("$num is a palindrome number.");
  } else {
    print("$num is not a palindrome number.");
  }
}
