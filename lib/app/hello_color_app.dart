import 'package:flutter/material.dart';
import 'package:test_app/screens/color_screen.dart';

/// The root widget of the Hello Color App.
class HelloColorApp extends StatelessWidget {
  /// Creates the root application widget.
  const HelloColorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Color App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(decoration: TextDecoration.none),
        ),
      ),
      home: const ColorScreen(),
    );
  }
}
