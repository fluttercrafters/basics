import 'package:flutter/material.dart';
import 'package:random_quotes/constants.dart';
import 'package:random_quotes/random_quote.dart';
import 'package:random_quotes/utils.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  late String currentQuote;

  @override
  void initState() {
    super.initState();
    currentQuote = getRandomQuote(quotes);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: RandomQuote(
            quote: getRandomQuote(quotes),
            onPressed: () {
              setState(() {
                currentQuote = getRandomQuote(quotes);
              });
            },
          ),
        ),
      ),
    );
  }
}
