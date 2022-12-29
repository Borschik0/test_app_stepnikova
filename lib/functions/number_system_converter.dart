import 'dart:math';

/// Class responsible for converting a value to different(No) number systems.
class NumberSystemConverter {
  /// The value that the user can set.
  int value;

  /// Generated value based on task requirements
  int randomNumber = Random().nextInt(16777215);

  /// Optional class parameter; default is 0.
  NumberSystemConverter({this.value = 0});

  /// The function that converts from decimal to hexadecimal.
  String decToHex() {
    int num = value != 0 ? value : randomNumber;
    const hexDivideValue = 16;
    String answer = '';

    final Map<int, String> hexValues = {
      10: 'A',
      11: 'B',
      12: 'C',
      13: 'D',
      14: 'E',
      15: 'F'
    };

    while (num != 0) {
      answer = hexValues.containsKey(num % hexDivideValue)
          ? answer + hexValues[num % hexDivideValue].toString()
          : answer + (num % hexDivideValue).toString();
      num = num ~/ hexDivideValue;
    }

    return answer = '#${answer.split('').reversed.join()}';
  }
}
