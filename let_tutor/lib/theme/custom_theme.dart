import 'package:flutter/material.dart';
import 'package:let_tutor/theme/custom_text.dart';

class CustomTheme{
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Roboto',
    textTheme: CustomText.textTheme,
    brightness: Brightness.light,
    //colorSchemeSeed: Colors.green,
    useMaterial3: false,

    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      foregroundColor: Colors.blue
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedLabelStyle: TextStyle(
        fontWeight: FontWeight.bold
      ),
      unselectedItemColor: Colors.black38,
      showUnselectedLabels: false,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: 'Roboto',
    textTheme: CustomText.textTheme,
    brightness: Brightness.dark,
    useMaterial3: false,
    colorSchemeSeed: Colors.green
  );
}