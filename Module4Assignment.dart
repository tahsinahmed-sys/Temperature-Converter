
class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  double discountedPrice(double discountPercent) {
    return price - (price * discountPercent / 100);
  }
}



class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);
}

class Manager extends Employee {
  String department;

  Manager(String name, double salary, this.department)
      : super(name, salary);

  void displayInfo() {
    print("Manager Name: $name");
    print("Salary: $salary");
    print("Department: $department");
  }
}

class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, double salary, this.programmingLanguage)
      : super(name, salary);

  void displayInfo() {
    print("Developer Name: $name");
    print("Salary: $salary");
    print("Programming Language: $programmingLanguage");
  }
}




abstract class Appliance {
  void turnOn();
  void turnOff();
}

class Fan extends Appliance {
  @override
  void turnOn() {
    print("Fan is now running");
  }

  @override
  void turnOff() {
    print("Fan is now stopped");
  }
}

class Light extends Appliance {
  @override
  void turnOn() {
    print("Light is switched on");
  }

  @override
  void turnOff() {
    print("Light is switched off");
  }
}




void main() {


  print("===== BOOK DETAILS =====");

  Book book1 = Book("The Alchemist", "Paulo Coelho", 500);
  Book book2 = Book("Atomic Habits", "James Clear", 800);

  print("\nBook 1:");
  print("Title: ${book1.title}");
  print("Author: ${book1.author}");
  print("Price: ${book1.price}");
  print("Discounted Price: ${book1.discountedPrice(10)}");

  print("\nBook 2:");
  print("Title: ${book2.title}");
  print("Author: ${book2.author}");
  print("Price: ${book2.price}");
  print("Discounted Price: ${book2.discountedPrice(15)}");


  
  print("\n===== EMPLOYEE DETAILS =====");

  Manager manager = Manager("Rahim", 60000, "HR");
  Developer developer = Developer("Karim", 50000, "Dart");

  print("\nManager:");
  manager.displayInfo();

  print("\nDeveloper:");
  developer.displayInfo();


  print("\n===== APPLIANCE DETAILS =====");

  Fan fan = Fan();
  Light light = Light();

  print("\nFan:");
  fan.turnOn();
  fan.turnOff();

  print("\nLight:");
  light.turnOn();
  light.turnOff();
}