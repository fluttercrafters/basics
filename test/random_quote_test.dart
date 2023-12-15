import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_quotes/random_quote.dart';

void main() {
  testWidgets('RandomQuote can display a random quote', (widgetTester) async {
    // Arrange
    const firstQuote = 'Testing an inspirational quote.';
    await widgetTester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: RandomQuote(
            quote: firstQuote,
            onPressed: () {},
          ),
        ),
      ),
    );

    // Act
    final randomQuoteFinder = find.byType(RandomQuote);
    final textFinder = find.text(firstQuote);

    // Assert
    expect(randomQuoteFinder, findsOneWidget);
    expect(textFinder, findsOneWidget);
  });
  testWidgets('RandomQuote can display a button', (widgetTester) async {
    // Arrange
    const mockQuote = 'First inspirational quote.';
    bool buttonPressed = false;
    await widgetTester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: RandomQuote(
            quote: mockQuote,
            onPressed: () {
              buttonPressed = true;
            },
          ),
        ),
      ),
    );

    // Act
    final randomQuoteFinder = find.byType(RandomQuote);
    final buttonFinder = find.byType(ElevatedButton);

    await widgetTester.tap(buttonFinder);
    await widgetTester.pumpAndSettle();

    // Assert
    expect(randomQuoteFinder, findsOneWidget);
    expect(buttonFinder, findsOneWidget);
    expect(buttonPressed, isTrue);
  });
}
