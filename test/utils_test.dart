import 'package:random_quotes/constants.dart';
import 'package:random_quotes/utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('getRandomQuote can return a random quote', () {
    // Arrange
    String result;

    // Act
    result = getRandomQuote(quotes);

    // Assert
    expect(result, isNotNull);
    expect(result, isNotEmpty);
  });
}