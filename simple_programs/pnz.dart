/*First dart code!*/

import 'dart:io';


void main() {
  print("Enter an integer below");
  num? num1 = int.parse(stdin.readLineSync()!);

  if (num1 == 0) {
    print("Zero");
  } else if (num1 > 0) {
    print("Positive Number");
  } else {
    print("Negative Number");
  }

}
