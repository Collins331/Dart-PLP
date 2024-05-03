void main() {
  // Example of int data type
  int age = 25;
  print('Age: $age');

  // Example of double data type
  double height = 1.75;
  print('Height: $height meters');

  // Example of String data type
  String name = 'John Doe';
  print('Name: $name');

  // Example of List data type
  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  print('Fruits: $fruits');

  // Example of accessing elements in a List
  print('First fruit: ${fruits[0]}');

  // Example of adding elements to a List
  fruits.add('Mango');
  print('Updated fruits list: $fruits');

  // Example of Map data type
  Map<String, String> capitals = {
    'USA': 'Washington D.C.',
    'UK': 'London',
    'France': 'Paris'
  };
  print('Capitals: $capitals');

  // Example of accessing elements in a Map
  print('Capital of USA: ${capitals['USA']}');

  // Example of adding elements to a Map
  capitals['Germany'] = 'Berlin';
  print('Updated capitals map: $capitals');
}
