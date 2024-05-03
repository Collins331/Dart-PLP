void main() {
  // Get the current date and time
  // Timezone based
  DateTime now = DateTime.now();

  // Calculate a future date by adding 7 days to the current date
  DateTime futureDate = now.add(Duration(days: 7));

  // Create a DateTime object representing an earlier date
  DateTime earlierDate = DateTime(2024, 3, 20);

  // Parse a string to DateTime
  DateTime parsedDate = DateTime.parse('2024-04-05');

  // Format the current date to 'yyyy-MM-dd' format
  // // 2024-03-28
  String formattedDate = '${now.year}-${_addLeadingZero(now.month)}-${_addLeadingZero(now.day)}';

  // Format the current time to 'HH:mm:ss' format
  String formattedTime = '${_addLeadingZero(now.hour)}:${_addLeadingZero(now.minute)}:${_addLeadingZero(now.second)}';

  // Format the parsed date in a custom format
  String customFormattedDate = '${_getMonthAbbreviation(parsedDate.month)} ${parsedDate.day}, ${parsedDate.year}';

  // Calculate the difference in days between the current date and an earlier date
  int differenceInDays = now.difference(earlierDate).inDays;

  // Print the current date and time
  print("Current Date and Time is : $now");

  // Print the formatted date
  print("Formatted Date is : $formattedDate");

  // Print the formatted time
  print("Formatted Time : $formattedTime");

  // Print the future date
  print("Date 7 days from now: $futureDate");

  // Print the difference in days
  print("The Difference between $now and $earlierDate: $differenceInDays days");

  // Print the parsed date
  print("Parsed Date: $parsedDate");

  // Print the custom formatted date
  print("Custom Formatted Date: $customFormattedDate");

  // Print specific components of the current date
  print("Year: ${now.year}");
  print("Month: ${now.month}");
  print("Day: ${now.day}");
  print("Hour: ${now.hour}");
  print("Minute: ${now.minute}");
  print("Second: ${now.second}");
}

// Function to add leading zero to a number if needed
String _addLeadingZero(int value) {
  return value.toString().padLeft(2, '0');
}

// Function to get month abbreviation
String _getMonthAbbreviation(int month) {
  return ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'][month - 1];
 
}
