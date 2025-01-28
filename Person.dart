import 'dart:io';

class Person {
  String firstName = "";
  String lastName = "";
  int age = 0;
  String address = "";

  void set myFName(String firstName) {
    this.firstName = firstName;
  }

  String get myFName {
    return firstName;
  }

  void set myLName(String lastName) {
    this.lastName = lastName;
  }

  String get myLName {
    return lastName;
  }

  void set myAge(int age) {
    this.age = age;
  }

  int get myAge {
    return age;
  }

  void set myAddress(String address) {
    this.address = address;
  }

  String get myAddress {
    return address;
  }
}

void main() {
  int age = 0;
  Person p1 = Person();  

  stdout.write("Input your first name: ");
  String f = stdin.readLineSync()!;
  p1.myFName = f;

  stdout.write("Input your last name: ");
  String l = stdin.readLineSync()!;
  p1.myLName = l;

  stdout.write("Input your age: ");
  age = int.parse(stdin.readLineSync()!);
  p1.myAge = age;

  stdout.write("Input your address: ");
  String add = stdin.readLineSync()!;
  p1.myAddress = add;  

  print("Full Name: ${p1.myFName} ${p1.myLName}");
  print("Age: ${p1.myAge}");
  print("Address: ${p1.myAddress}");
}
