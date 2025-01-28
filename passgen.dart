import 'dart:io';
import 'dart:math';

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890!@#%^&*';
Random _rnd = Random();

void main() {

  print('Input the given letter of the password strength that you desire: ');
  print(' [A]Weak \n Description: Password to be generated is 8 characters.');
  print(' [B]Medium \n Description: Password to be generated is 15 characters.');
  print(' [C]Strong \n Description: Password to be generated is 25 characters.');
  String strength = stdin.readLineSync()?.toUpperCase() ?? '';


  passwordGenerator(strength);
}


void passwordGenerator(String strength) {
  int length;

  if (strength == 'A') {
    length = 8;
  } else if (strength == 'B') {
    length = 15;
  } else if (strength == 'C') {
    length = 25;
  } else {
    print('Invalid option! Please enter A if "weak", B for "medium", or C in "strong".');
    return;
  }

  
  String password = shuffleGenerator(length);
  print('Generated Password: $password');
}


String shuffleGenerator(int length) {
  return String.fromCharCodes(Iterable.generate(
    length,
    (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length)),
  ));
}
