import 'package:flutter/material.dart';
import 'package:let_tutor/theme/custom_text.dart';

class CustomTheme{
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Roboto',
    textTheme: CustomText.textTheme,
    colorScheme: const ColorScheme.light()
  );
}