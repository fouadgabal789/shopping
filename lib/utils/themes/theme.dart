import 'package:flutter/material.dart';
import 'package:shoping/utils/themes/coustom_themes/text_themes.dart';

class TAppTheme{
  TAppTheme._();
  static ThemeData LightTheme =ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Color(0xFF06AB8D),
    scaffoldBackgroundColor: Colors.white,
      textTheme:TTextTheme.LightTextTheme,
    elevatedButtonTheme: ElevatedButtonThemeData()
  );
  static ThemeData DarkTheme =ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Color(0xFF06AB8D),
      scaffoldBackgroundColor: Colors.black,
      textTheme:TTextTheme.DarkTextTheme
  );


}