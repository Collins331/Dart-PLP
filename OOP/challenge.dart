import 'dart:io';

// Interface for a shape
abstract class Shape {
  double calculateArea();
}

// Base class representing a geometric shape
class GeometricShape {
  String name;

  GeometricShape(this.name);

  void displayShapeName() {
    print('This is a $name.');
  }
}

// Class representing a rectangle
class Rectangle extends GeometricShape implements Shape {
  double width;
  double height;

  Rectangle(String name, this.width, this.height) : super(name);

  @override
  double calculateArea() {
    return width * height;
  }

  // Overriding the displayShapeName method
  @override
  void displayShapeName() {
    print('This is a rectangle named $name.');
  }
}

// Class representing a circle
class Circle extends GeometricShape implements Shape {
  double radius;

  Circle(String name, this.radius) : super(name);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

// Class for handling file operations
class FileReader {
  List<String> readLinesFromFile(String fileName) {
    File file = File(fileName);
    List<String> lines = file.readAsLinesSync();
    return lines;
  }
}

void main() {
  // Creating an instance of Rectangle initialized with data from a file
  FileReader fileReader = FileReader();
  List<String> rectangleData = fileReader.readLinesFromFile('rectangle_data.txt');
  if (rectangleData.length == 2) {
    String name = rectangleData[0];
    double width = double.parse(rectangleData[1].split(',')[0]);
    double height = double.parse(rectangleData[1].split(',')[1]);
    Rectangle rectangle = Rectangle(name, width, height);
    rectangle.displayShapeName();
    print('Area of the rectangle: ${rectangle.calculateArea()}');
  } else {
    print('Invalid data format for rectangle.');
  }

  // Creating an instance of Circle
  Circle circle = Circle('Circle', 5.0);
  circle.displayShapeName();
  print('Area of the circle: ${circle.calculateArea()}');

  // Method demonstrating the use of a loop
  print('Printing numbers from 1 to 5:');
  for (int i = 1; i <= 5; i++) {
    print(i);
  }
}
