void main() {
  print("I'm learning Dart");
  String name = "Collins";
  num phone_number = 254797450093;
  int age = 20;
  bool male = true;
  double BMI = 22.5;

  print(
      "Hello everyone, I'm $name, $age old with a BMI value of $BMI and gender male = $male.\nMy phone number is \t $phone_number");
  /* Dart data types are:
      1. Number eg num, int, double
      2. String eg "Dart is amazing"
      3. Boolean eg "true", 'false' 
      4. Lists eg ['Dart', 'Flutter', 'Python']
      5. Maps 6. Runes 7. Null
      */
  // Lists
  List<String> languages = ['Dart', 'Python', 'JavaScript', 'PHP'];

  print(languages);

  // Maps -> a dynamic collection that represents a set of values ​as key-value pairs

  Map<String, int> ages = {'John': 35, 'Collins': 20, 'Jane': 30, 'Shaw': 24};

  print(ages);

  // Runes -> as an integer used to represent any Unicode code point. As a Dart string is a simple sequence of UTF-16 code units, 32-bit Unicode values in a string are represented using a special syntax.
  String runesString = "Runes in Dart: \u{1F9AA} \u{1F75A} \u{1F331}";

  print(runesString);
}
