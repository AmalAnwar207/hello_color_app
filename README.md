# Hello Color App

A simple Flutter application that changes the background color 
when the user taps anywhere on the screen.

## Features
- Displays "Hello there" text in the center of the screen
- Background color changes randomly on tap (16,777,216 possible RGB colors)
- Text color automatically adapts based on background brightness
- Smooth color transition animation
- Static code analysis using solid_lints

## How it works
The application generates a random RGB value using Dart's `Random` class.
Since RGB supports 256 × 256 × 256 combinations, 
the app can generate 16,777,216 different colors.

## Run the project
flutter pub get


flutter run

## Notes
- No external libraries were used for color generation.
- The code follows Clean Code, DRY, and KISS principles.
