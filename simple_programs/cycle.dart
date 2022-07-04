// A simple program for cycling between two numbers.

import 'dart:io';

void cycle(int min, int max, int add) {
  int i = min;
    print(min);
  while (min != max) {
    min += add;
    print(min);
    sleep(Duration(seconds: 1));

    if (min == max) {
      print("Reached maximum number, number is at $min");
      while (min != i) {
        min -= add;
        print(min);
        sleep(Duration(seconds: 1));
      }
    }
  }
}
