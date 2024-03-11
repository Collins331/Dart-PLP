void main() {
  for_loop(5);
  while_loop(10);
  do_while_loop(5);
}

void for_loop(int number) {
  int i = 0;
  for (i; i < number; i++) {
    print(i);
  }
}

void while_loop(int number) {
  int i = 0;
  while (i < number) {
    print(i);
    i++;
  }
}

void do_while_loop(int number) {
  int i = 0;
  do {
    print(i);
    i++;
  } while (i < number);
}
