import 'dart:io';

void main() {
  stdout.write("Enter a string: ");
  String text = stdin.readLineSync()!.toLowerCase();
  String reversed = text.split('').reversed.join('');

  if (text == reversed) {
    print("'$text' is a palindrome string.");
  } else {
    print("'$text' is not a palindrome string.");
  }
}
