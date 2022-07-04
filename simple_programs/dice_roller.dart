// Dice simulator written in dart.

import 'dart:io';
import 'dart:math';


List<int> nums = [1, 2, 3, 4, 5, 6];

void main() {
  print("Dice roller stimulator");
  String? x = "y";
  while (x == "y") {
    var _random_num =  Random();
    var number = nums[_random_num.nextInt(nums.length)];

    if (number == 1) {
      print("""               ---------- 
               |        |
               |    0   |
               |        |
               ----------""");
    } else if (number == 2) {
      print("""               ----------
               |        |
               | O    O |
               |        |
               ----------""");
    } else if (number == 3) {
      print("""               ----------
               |    0   |
               |    0   |
               |    0   |
               ----------""");
    } else if (number == 4) {
      print("""               ----------
               | O    O |
               |        |
               | O    O |
               ----------""");
    } else if (number == 5) {
      print("""               ----------
               | O    O |
               |    0   |
               | O    O |
               ----------""");
    } else if (number == 6) {
      print("""               ----------
               | O    O |
               | O    O |
               | O    O |
               ----------""");
    }
    print("Press y to roll again");
    String? rollAgain = stdin.readLineSync();
    if (rollAgain == 'y') {
      continue;
    } else {
      break;
    }
  }
}
