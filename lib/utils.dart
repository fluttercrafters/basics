import 'dart:math';

String getRandomQuote(List<String> quotes) {
  final index = Random().nextInt(quotes.length);
  return quotes[index];
}
