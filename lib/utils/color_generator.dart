import 'dart:math';
import 'package:flutter/material.dart';

/// Generates a random RGB color from 16,777,216 possible colors.
class ColorGenerator {
  static const int _maxRgbValue = 0x1000000;
  static const int _fullAlpha = 0xFF000000;

  final Random _random;

  /// Creates a [ColorGenerator] with an optional [Random] instance.
  ColorGenerator({Random? random}) : _random = random ?? Random();

  /// Returns a random opaque color using full RGB range (0x000000–0xFFFFFF).
  Color nextColor() {
    final int rgbValue = _random.nextInt(_maxRgbValue);

    return Color(_fullAlpha | rgbValue);
  }
}
