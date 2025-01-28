import 'dart:io';


main(){
  int n, n1,n2, sum;

print("Input a number: ");
  n = int.parse(stdin.readLineSync()!);
  if (n % 2 == 0){
    print("Even");
  }else{
    print("Odd");
  }
  if (n == 0){
    print("Zero");
  } else if (n > 0){
    print("Positive");
  } else if (n < 0) {
    print("Negative");
  }

print("Input a letter: ");
String char = stdin.readLineSync()!;

if (char == 'a'){
  print("Vowel");
} else if (char == 'e'){
  print("Vowel");
} else if (char == 'i'){
  print("Vowel");
}else if (char == 'o'){
  print("Vowel");
}else if (char == 'u'){
  print("Vowel");
} else{
  print("Consonant");
}

print ("What is your name?: ");
String name = stdin.readLineSync()!;
for (int i = 0; i < 100; i++){
print (name);

print("Input the first number: ");
n1 = int.parse(stdin.readLineSync()!);
print("Input the second number: ");
n2 = int.parse(stdin.readLineSync()!);
sum = (n1+n2);
print ('Total: $n1 + $n2 = $sum');
}
}

