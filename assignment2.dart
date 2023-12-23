import 'dart:math';

main() {
//Q.1: Create a list of numbers & write a program to get the smallest & greatest number from a list.

  var list = [2, 3, 4, 76, 45];
  var largest_value = list[0];
  var smallest_value = list[0];
  for (var i = 0; i < list.length; i++) {
    if (list[i] > largest_value) {
      largest_value = list[i];
    }
    if (list[i] < smallest_value) {
      smallest_value = list[i];
    }
  }
  print("smallest value is:${smallest_value}");
  print("greatest value is:${largest_value}");

  //Q.2: remove all false values from below list by using removeWhere or retainWhere property.
  List<String> usersEligibility = [
    'John',
    'Alice',
    'eligible',
    'Mike',
    'Sarah',
    'Tom'
  ];

  usersEligibility.retainWhere((element) => element == 'eligible');

  print(usersEligibility);

//Q.3: Given a list of integers, write a dart code that returns the maximum value from the list.

  List numbers = [8, 1, 0, 2, 102, 5];

  var maximumNumber =
      numbers.reduce((value, element) => value > element ? value : element);

  print(maximumNumber);

  //Q.4: Write a Dart code that takes in a list of strings and removes any duplicate elements, returning a new list without duplicates. The order of elements in the new list should be the same as in the original list.

  List names = ['John', 'ali', 'ahmed', 'hamid', 'John', 'ahmed'];

  List output = [
    ...{...names}
  ];

  print(output);

//Q.5: Write a program that takes a list
//of numbers as input and prints the even numbers in the list using a for loop

  List<int> number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (int number in number.where((n) => n % 2 == 0)) print(number);
//question # 6

  Map<String, double> mathMarks = {
    'ram': 30,
    'mark': 32,
    'harry': 88,
    'raj': 69,
    'john': 15,
  };

  mathMarks.removeWhere((key, value) => value <= 30);

  print(mathMarks);

  //question#7

  Map<String, String> contactMap = {
    'maha': '1234567890',
    'ahmed': '9876543210',
    'sara': '5555555555',
    'fahad': '9999',
  };

  List<String> keysWithLength4 =
      contactMap.keys.where((key) => key.length == 4).toList();

  print('Keys with length 4: $keysWithLength4');
}
