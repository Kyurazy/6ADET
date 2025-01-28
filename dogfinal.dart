import 'dart:io';
class Dog{
  String breed = "";
  String size = "";
  int age = 0;
  String color = "";

Dog(){
  print("Invalid input. Please Try Again!");
}

Dog.small(String breed, String size, int age, String color){
  this.breed = breed;
  this.size = "Small";
  this.age = 2;
  this.color = color;
}

Dog.medium(String breed, String size, int age, String color){
  this.breed = breed;
  this.size = "Medium";
  this.age = 3;
  this.color = color;
}

Dog.large(String breed, String size, int age, String color){
  this.breed = breed;
  this.size = "Large";
  this.age = 5;
  this.color = color;
}

  String toString() {
    return 'Breed: $breed, Size: $size, Age: $age, Color: $color';
}
}

void main() {
  Dog large1 = Dog.large("Neapolitan Mastiff", "Large", 5, "Black");
  Dog small1 = Dog.small("Maltese", "Small", 2, "White");
  Dog medium1 = Dog.medium("Chow Chow", "Medium", 3, "Brown");

  stdout.write("Choose your dog breed!\n[L]=Large\n[M]=Medium\n[S]=Small\n");
  String? choice = stdin.readLineSync()!.toLowerCase();

  if (choice == "l") {
    print("$large1");
  } else if (choice == "m") {
    print("$medium1");
  } else if (choice == "s") {
    print("$small1");
  } else {
    Dog d = new Dog ();
  }
}
