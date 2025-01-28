import 'dart:io';

void main() {
  List<int> myNumbers = [];
  int n, sum = 0;

  print("Please input 10 numbers: ");

  for (int i = 0; i < 10; i++) {
    n = int.parse(stdin.readLineSync()!);
    myNumbers.add(n);
    sum += n;
  } 

  print("Total sum of the 10 numbers is: $sum");
  print("The Average is: ${sum}/10 = ${sum / 10}");
}
