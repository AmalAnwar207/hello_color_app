import 'package:flutter/material.dart';
import 'package:test_app/utils/color_generator.dart';
import 'package:test_app/widgets/hello_text.dart';

/// Main screen that changes background color on tap.
class ColorScreen extends StatefulWidget {
  /// Creates the main [ColorScreen] widget.
  const ColorScreen({super.key});

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  static const double _luminanceThreshold = 0.5;

  final ColorGenerator _colorGenerator = ColorGenerator();

  Color? _backgroundColor;

  @override
  void initState() {
    super.initState();
    _backgroundColor = _colorGenerator.nextColor();
  }

  void _onScreenTap() {
    setState(() {
      _backgroundColor = _colorGenerator.nextColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    final Color currentBackground = _backgroundColor ?? Colors.white;
    final bool isDark =
        currentBackground.computeLuminance() < _luminanceThreshold;
    final Color primaryColor = isDark ? Colors.white : Colors.black87;

    return GestureDetector(
      onTap: _onScreenTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: double.infinity,
        height: double.infinity,
        color: currentBackground,
        child: Center(child: HelloText(color: primaryColor)),
      ),
    );
  }
}
