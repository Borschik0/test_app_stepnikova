import 'package:flutter_test/flutter_test.dart';
import 'package:test_app_stepnikova/functions/number_system_converter.dart';

void main() {
  test('Testing the decimal to hex converter', () {
    const int testVariable1 = 16777212;
    final String result =
        NumberSystemConverter(value: testVariable1).decToHex();
    expect(result, '#FFFFFC');
  });
}
