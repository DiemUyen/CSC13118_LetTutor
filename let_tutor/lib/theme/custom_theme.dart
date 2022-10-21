import 'package:flutter/material.dart';
import 'package:let_tutor/theme/app_color.dart';
import 'package:let_tutor/theme/custom_text.dart';

class CustomTheme{
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Roboto',
    textTheme: CustomText.textTheme,
    brightness: Brightness.light,
    colorSchemeSeed: AppColor.mainColor,

    scaffoldBackgroundColor: AppColor.backgroundColor,
    
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      foregroundColor: AppColor.secondaryColor,
    ),
    
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColor.onMainColor,
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
    useMaterial3: true
  );
}