import 'dart:io';

main() {
  stdout.write("Please enter your name: ");
  String name = stdin.readLineSync()!;
  stdout.write("Input Student number: ");
  int studNum = int.parse(stdin.readLineSync()!);
  stdout.write("Enter your Course (Ex: BSN): ");
  String course = stdin.readLineSync()!;
  stdout.write("Enter your Year Level (Ex. 4): ");
  int year = int.parse(stdin.readLineSync()!);
  stdout.write("Enter your Semester (Ex. 2): ");
  int sem = int.parse(stdin.readLineSync()!);

    stdout.write("Input max units allowed to enroll: ");
  int maxUnits = int.parse(stdin.readLineSync()!);

  List<Map> courses = [];
  List<Map> enrolledCourses = [];
  int overallUnits = 0;

  while (true) {
    stdout.write("Enter subject code (or type 'done' when finished): ");
    String subjectCode = stdin.readLineSync()!;

    if (subjectCode.toLowerCase() == 'done') {
      break;
    }

    stdout.write("Enter units for $subjectCode: ");
    int subjectUnit = int.parse(stdin.readLineSync()!);

    if (overallUnits + subjectUnit > maxUnits) {
      print("Cannot add $subjectCode. Total units would exceed the maximum limit of $maxUnits.");
    } else {
      courses.add({subjectCode: subjectUnit});
      overallUnits += subjectUnit;
      print("Successfully added $subjectCode with $subjectUnit units.");
    }

    if (overallUnits >= maxUnits) {
      print("You have reached the maximum unit limit. Enrollment finished.");
      break;
    }
  }
  print("\nEnrolled Courses:");
  for (var enrolled in courses) {
    enrolled.forEach((subjectCode, subjectUnit) {
      print("Subject Code: $subjectCode, Subject Unit: $subjectUnit");
    });
  }

  print("Total Units Enrolled: $overallUnits");
}
