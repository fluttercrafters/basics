import 'package:flutter/material.dart';

class RandomQuote extends StatelessWidget {
  const RandomQuote({
    super.key,
    required this.quote,
    required this.onPressed,
  });

  final String quote;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          quote,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        ElevatedButton(
          onPressed: onPressed,
          child: const Text('Next Quote'),
        ),
      ],
    );
  }
}
