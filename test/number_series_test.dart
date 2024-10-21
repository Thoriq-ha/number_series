// ignore_for_file: avoid_print

void main() {
  test4();
}

test4() {
  int number = 19;
  for (int i = 1; i <= number; i++) {
    if (i % 5 == 0) {
      print("LIMA");
    } else if (i % 7 == 0) {
      print("TUJUH");
    } else {
      print(i);
    }
  }
}

test3() {
  int number = 5;
  int startNum = 10;
  int step = 11;
  for (int i = 0; i < number; i++) {
    print(startNum + (step * i));
  }
}

test2() {
  int number = 5;
  List<int> numberSeries = [];
  for (int i = 0; i < number * 2; i++) {
    if (i == number) {
      continue;
    }
    if (i >= number) {
      numberSeries.add(number * 2 - i);
    } else {
      numberSeries.add(i + 1);
    }
  }

  print(numberSeries);
}
