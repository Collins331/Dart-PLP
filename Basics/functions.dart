num addTwo(num num1, num num2) => num1 + num2;

num subtractTwo(num sub1, num sub2) => sub1 - sub2;

num multiplyTwo(num mult1, num mult2) => mult1 * mult2;

double divideTwo(num div1, num div2) => div1 / div2;

int stringLength(String word) => word.length;

dynamic getFirstElement(List<dynamic> myList) {
  if (myList.isNotEmpty) {
    return myList[0];
  } else {
    return null;
  }
}

void main() {
  num add = addTwo(331, 75);
  num sub = subtractTwo(61, 17);
  num div = divideTwo(121, 11);
  num mult = multiplyTwo(9, 7);
  num stringLen = stringLength("Collins");
  num firstElement = getFirstElement([69, 54, 15, 93]);

  print("Sum of two numbers 331 & 75 =  $add");
  print("Substraction of 17 from 61 = $sub");
  print("Multiplication of 7 & 9 = $mult");
  print("Division of 121 by 11 = $div");
  print('The string length of Collins $stringLen');
  print("The first element in the list is = $firstElement");
}
