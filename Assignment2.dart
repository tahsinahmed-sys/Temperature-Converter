import 'dart:io';

void main() {
  bool running = true;

  while (running) {
    print('====================================');
    print('       SMART TEMPERATURE CONVERTER');
    print('====================================');
    print('1. Celsius to Fahrenheit');
    print('2. Fahrenheit to Celsius');
    print('3. Celsius to Kelvin');
    print('4. Kelvin to Celsius');
    print('5. Fahrenheit to Kelvin');
    print('6. Kelvin to Fahrenheit');
    print('7. Exit');
    print('====================================');

    stdout.write('Enter your choice: ');
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 7) {
      print('Thank you for using Smart Temperature Converter!');
      break;
    }

    if (choice < 1 || choice > 7) {
      print('Invalid choice! Please try again.\n');
      continue;
    }

    stdout.write('Enter temperature: ');
    double temperature = double.parse(stdin.readLineSync()!);

    double result;
    String fromUnit;
    String toUnit;

    switch (choice) {
      case 1:
        result = (temperature * 9 / 5) + 32;
        fromUnit = '°C';
        toUnit = '°F';
        break;

      case 2:
        result = (temperature - 32) * 5 / 9;
        fromUnit = '°F';
        toUnit = '°C';
        break;

      case 3:
        result = temperature + 273.15;
        fromUnit = '°C';
        toUnit = 'K';
        break;

      case 4:
        result = temperature - 273.15;
        fromUnit = 'K';
        toUnit = '°C';
        break;

      case 5:
        result = (temperature - 32) * 5 / 9 + 273.15;
        fromUnit = '°F';
        toUnit = 'K';
        break;

      case 6:
        result = (temperature - 273.15) * 9 / 5 + 32;
        fromUnit = 'K';
        toUnit = '°F';
        break;

      default:
        continue;
    }

    print('\n$temperature$fromUnit = ${result.toStringAsFixed(2)}$toUnit');

    stdout.write('Do you want to perform another conversion? (y/n): ');
    String again = stdin.readLineSync()!.toLowerCase();

    if (again != 'y') {
      running = false;
    }

    print('');
  }
}