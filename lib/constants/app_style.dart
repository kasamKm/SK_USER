import 'package:flutter/material.dart';

class AppStyle{
  AppStyle._();

  // Light Theme
  static final ThemeData lightTheme = ThemeData(
    primaryColor: Colors.black, //Color(0xff101317),
    canvasColor: Colors.white,
      dividerColor:  Color(0xffF6F6F6),
    primaryColorDark: Color(0xffACAFB5),
    cardColor: Color(0xFF3085FE),
    visualDensity: VisualDensity.adaptivePlatformDensity, colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff3085FE), background: Colors.white),
    useMaterial3: true,
    disabledColor: Colors.white,
    hintColor: Color(0xFFE8FFFC),
    focusColor: Color(0xfffcebea),


    bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Color(0xffffffff),
  ),
  );

// Dark Theme
  static final ThemeData darkTheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xff101317),
    ),
    primaryColor: Colors.white.withOpacity(0.7),
    canvasColor: Colors.black,
    dividerColor: Color(0xff101317),
    hintColor: Color(0xff121C1F),
    cardColor: Color(0xFF3085FE),
      disabledColor: Colors.white,

    primaryColorDark: Color(0xffACAFB5),
    focusColor: Color(0xff1C181C),
    colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff3085FE), background: Colors.black,),
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    // Add other customizations here
  );

}