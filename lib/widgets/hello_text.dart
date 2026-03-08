import 'package:flutter/material.dart';

/// Displays the "Hello there" greeting text.
class HelloText extends StatelessWidget {
  /// Creates a [HelloText] widget.
  const HelloText({
    required this.color,
    super.key,
  });

  /// The color of the text.
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello there',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: color,
        decoration: TextDecoration.none,
      ),
    );
  }
}
