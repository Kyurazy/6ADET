import 'dart:io';

int sum(n1,n2){
  return n1+n2;

}
int sub(n1,n2){
  return n1-n2;

}
int mult(n1,n2){
  return n1*n2;
}
int div(n1,n2){
  return n1%n2;

}
void main(){
  print("********************************");
  print("* Welcome to the 6ADET Calculator!  *");
  print("********************************\n");
  while (true){
    
  stdout.write("Enter the first number: ");
  int x = int.parse(stdin.readLineSync()!);
  stdout.write("Enter second number: ");
  int y = int.parse(stdin.readLineSync()!);
print("\nSelect an operation from the list below:");

    print("1. Add (+)");
    print("2. Subtract (-)");
    print("3. Multiply (x)");
    print("4. Divide (÷)");
    print("5. End ");
    
    stdout.write("\nEnter your choice (1-5): ");
    int choice = int.parse(stdin.readLineSync()!);

    int result;
    if (choice == 1) {
      result = sum(x, y);
      print("\nResult of Addition: $x + $y = $result");
    } else if (choice == 2) {
      result = sub(x, y);
      print("\nResult of Subtraction: $x- $y = $result");
    } else if (choice == 3) {
      result = mult(x, y);
      print("\nResult of Multiplication: $x * $y = $result");
    } else if (choice == 4) {
      result = div(x, y);
      if (!result.isNaN) {
        print("\nResult of Division: $x / $y = $result");
      }
    } else if (choice == 5) {
      print("\nThank you for using the ADET Calculator! Goodbye!");
      break; 
    } else {
      print("\nInvalid choice! Please select a valid operation (1-5).");
    }
    print("\n--------------------------------");
}
}