import 'dart:io';

// void main(List<String> args) {
//   final arr = [1, 2, 3, 4, 5, 6];
//   print(a(arr));
// }

// a(arr) {
//   List<int> evenNumbers = [];

//   arr.forEach((number) {
//     if (number % 2 == 0) {
//       evenNumbers.add(number);
//     }
//   });
//   return evenNumbers;
// }

void main(List<String> args) {
  print("Enter age");
  int year = int.parse(stdin.readLineSync() ?? "0");
  print(a(year));
}

a(year) {
  final thisYear = 2023;
  return (thisYear - year);
}
