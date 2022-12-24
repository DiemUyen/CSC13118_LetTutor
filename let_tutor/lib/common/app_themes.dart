import 'package:flutter/material.dart';

import 'app_text_themes.dart';

class AppThemes {
  AppThemes._();

  static const primaryColor = Color(0xff438540);

  static ThemeData lightTheme = ThemeData(
      fontFamily: 'Roboto',
      textTheme: AppTextThemes.textTheme,
      brightness: Brightness.light,
      colorSchemeSeed: primaryColor,
      useMaterial3: true,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        showUnselectedLabels: false,
      ),
      /*elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(primaryColor),
              foregroundColor: MaterialStateProperty.all(Colors.white))),*/
      tabBarTheme: const TabBarTheme(
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: primaryColor,
          unselectedLabelColor: Colors.black12));

  static ThemeData darkTheme = ThemeData(
      fontFamily: 'Roboto',
      textTheme: AppTextThemes.textTheme,
      brightness: Brightness.dark,
      useMaterial3: true,
      colorSchemeSeed: primaryColor);
}
