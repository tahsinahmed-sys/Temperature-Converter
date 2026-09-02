import 'dart:io';

void main() {
  stdout.write("Enter Student Name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter Age: ");
  int age = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Student ID: ");
  String studentId = stdin.readLineSync()!;

  stdout.write("Enter Email: ");
  String email = stdin.readLineSync()!;

  stdout.write("Enter Phone Number: ");
  String? phone = stdin.readLineSync();

  if(phone == ""){
    phone = null;
  }

  stdout.write("Enter Total Marks: ");
  double totalMarks = double.parse(stdin.readLineSync()!);
  stdout.write("Enter Obtained Marks: ");
  double obtainedMarks = double.parse(stdin.readLineSync()!);
  double percentage = (obtainedMarks / totalMarks) * 100;

  String grade;

  if (percentage >= 80) {
    grade = "A+";
  } else if (percentage >= 70) {
    grade = "A";
  } else if (percentage >= 60) {
    grade = "A-";
  } else if (percentage >= 50) {
    grade = "B";
  } else if (percentage >= 40) {
    grade = "C";
  } else if (percentage >= 33) {
    grade = "D";
  } else {
    grade = "F";
  }

  String status;

  if (percentage >= 33) {
    status = "Passed";
  } else {
    status = "Failed";
  }

  print("\n===== Student Information =====");
  print("Name: $name");
  print("Age: $age");
  print("Student ID: $studentId");
  print("Email: $email");
  print("Phone: ${phone ?? "Not Provided"}");

  print("\n===== Academic Result =====");
  print("Total Marks: $totalMarks");
  print("Obtained Marks: $obtainedMarks");
  print("Percentage: ${percentage.toStringAsFixed(0)}%");
  print("Grade: $grade");
  print("Status: $status");
}