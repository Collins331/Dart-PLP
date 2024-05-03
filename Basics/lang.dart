String language(String lang, int rating) {
  return ("$lang is my favorite with a rating of $rating/10");
}

void main() {
  String prompt = language("JavaScript", 7);

  print(prompt);
}
