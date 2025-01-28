import 'dart:io';

void main() {
  print("Enter passcode: ");
  String Passcode = stdin.readLineSync()!;  
  String userInput;

  for (int i = 0; i < 3; i++) {
    print("Please enter your passcode (Attempt ${i + 1} of 3):");
    userInput = stdin.readLineSync()!;

    if (userInput == Passcode) {
      print("Access Granted");
      return;
    } else {
      print("Access Denied");
    }
  }
  print("ACCOUNT LOCKED");
}
