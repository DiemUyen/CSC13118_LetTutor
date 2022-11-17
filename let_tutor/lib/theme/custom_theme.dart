import 'package:flutter/material.dart';
import 'package:let_tutor/theme/custom_text.dart';

class CustomTheme{

  static const primaryColor = Color(0xff438540);

  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Roboto',
    textTheme: CustomText.textTheme,
    brightness: Brightness.light,
    colorSchemeSeed: primaryColor,
    useMaterial3: true,

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showUnselectedLabels: false,
    ),
    
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(primaryColor),
        foregroundColor: MaterialStateProperty.all(Colors.white)
      )
    ),


    tabBarTheme: const TabBarTheme(
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: primaryColor,
      unselectedLabelColor: Colors.black12
    )
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: 'Roboto',
    textTheme: CustomText.textTheme,
    brightness: Brightness.dark,
    useMaterial3: false,
    colorSchemeSeed: Colors.green
  );
}