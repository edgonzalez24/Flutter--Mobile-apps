import 'package:flutter/material.dart';

const List<Color> colorThemes = [
  Color(0xFFB71C1C), // Red
  Color(0xFF1B5E20), // Green
  Color(0xFF0D47A1), // Blue
  Color(0xFFF57F17), // Yellow
  Color(0xFF4A148C), // Purple
  Color(0xFF006064), // Teal
  Color(0xFF3E2723), // Brown
  Color(0xFF212121), // Grey
];

class AppTheme {
  int selectedColor = 0;

  AppTheme({
    required this.selectedColor,
  }): assert(selectedColor >= 0 && selectedColor < colorThemes.length, 'Selected color index is out of range.');

  ThemeData theme() {
    return ThemeData(useMaterial3: true, colorSchemeSeed: colorThemes[selectedColor]);
  }
}
