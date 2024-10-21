// ignore_for_file: avoid_print

void main() {
  int number = 9;
  print("Nilai N : $number");

  //Soal 1
  List<String> numberSeries1 =
      List.generate(number, (index) => (index + 1).toString());
  print("Soal 1 : $numberSeries1");

  //Soal 2
  List<String> numberSeries2 = List.generate(
      (number * 2) - 1,
      (index) => ((index >= number) ? ((number * 2 - index) - 1) : (index + 1))
          .toString());
  print("Soal 2 : $numberSeries2");

  //Soal 3
  List<String> numberSeries3 =
      List.generate(number, (index) => (10 + (11 * index)).toString());
  print("Soal 3 : $numberSeries3");

  //Soal 4
  List<String> numberSeries4 = List.generate(number, (index) {
    var n = index + 1;
    if (n % 5 == 0) {
      return "LIMA";
    } else if (n % 7 == 0) {
      return "TUJUH";
    } else {
      return n.toString();
    }
  });
  print("Soal 4 : $numberSeries4");
}
