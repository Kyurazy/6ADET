import 'dart:io';

void main(){
  List myNumbers = [];
  int n, sum = 0;
  print("Input numbers between 1-10 [type 0 to terminate input] ");
  
  while (true) {
    n = int.parse(stdin.readLineSync()!);
    if (n == 0) break;
    if (n >= 1 && n <= 10) {
      myNumbers.add(n);
      sum += n;
  }else{
    print("Cannot input a number more than 10");
  }
  
  for (int x = 0; x < myNumbers.length; x++) {
    (myNumbers[x]);
  }
  print("Total: $sum,");
  print("If you want to add more, input a number [type 0 to terminate input]");
}
}

