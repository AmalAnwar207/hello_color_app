import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/app/hello_color_app.dart';

void main() {
  testWidgets('shows Hello there text on launch', (WidgetTester tester) async {
    await tester.pumpWidget(const HelloColorApp());
    expect(find.text('Hello there'), findsOneWidget);
  });

  testWidgets('Hello there text remains visible after tap', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const HelloColorApp());
    await tester.tap(find.byType(GestureDetector));
    await tester.pumpAndSettle();
    expect(find.text('Hello there'), findsOneWidget);
  });

  testWidgets('screen has GestureDetector to handle taps', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const HelloColorApp());
    expect(find.byType(GestureDetector), findsOneWidget);
  });
}
