class Circle {
  double radius;

  Circle(this.radius);

  factory Circle.create(double radius) {
    return Circle(radius);
  }

  double calculateArea() {
    return 3.14 * radius * radius;
  }

}

void main() {
  Circle circle = Circle(5);
  print('Area of the circle is ${circle.calculateArea()}');
}