class Vehicle {
  String Brand;
  int Year;
  double Price;

  Vehicle(this.Brand, this.Year, this.Price);

  void Display() {
    print("I love $Brand, manufactured in $Year, and it costs $Price.");
  }
}

void main(){
  var car = Vehicle("Mercedes", 2021, 100000.0);
  car.Display();
}