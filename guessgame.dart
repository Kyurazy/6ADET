import 'dart:io';

int GuessInput() {
  print('Enter your guess:');
  return int.parse(stdin.readLineSync()!);
}

void giveHint(int guess, int magicNum) {
  if (guess < magicNum) {
    print('Try a higher number.');
  } else if (guess > magicNum) {
    print('Try a lower number.');
  } else {
    print('Congratulations! You guessed the magic number!');
  }
}

void main() {
  int magicNum = 42;
  int guess;
  int trial = 0;

  print('Welcome to the Magic Number Guessing Game!');
  
  do {
    guess = GuessInput();
    trial++;
    giveHint(guess, magicNum);
  } while (guess != magicNum);

  print('You guessed the magic number in $trial attempts!');
}
