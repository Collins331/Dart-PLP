void main(){
  DateTime now = DateTime.now();
  DateTime futureDate = now.add(Duration(days: 7));
  DateTime earlierDate = DateTime(2024, 4, 20);
  DateTime parsedDate = DateTime.parse('2024-05-06');

  print('Today: ${now}\nFuture Date: ${futureDate}\nEarlier Date: ${earlierDate}\nParsed Date: ${parsedDate}');
  print("Year: ${now.year}");
  print("Month: ${now.month}");
  print("Day: ${now.day}");
  print("Hour: ${now.hour}");
  print("Minute: ${now.minute}");
  print("Second: ${now.second}");
}