import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ThemeClass {
  Color orange = HexColor('#FF5400');
  Color orange_light = HexColor('#FF9900');
  Color ocean_blue = HexColor('#61CBE7');
  Color deep_purple = HexColor('#2F42B7');
  Color shade = HexColor('#fff8ee');
  Color dark_grey = HexColor('#141517');
  Color grey = HexColor('#1e1f22');
  Color white = HexColor('#ffffff');

  static ThemeData lightMode = ThemeData(
    primaryColor: ThemeData.light().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.light().copyWith(
      primary: _themeClass.orange,
      surface: _themeClass.shade,
      secondary: _themeClass.ocean_blue,
      tertiary: _themeClass.orange_light,
      onPrimaryContainer: _themeClass.dark_grey,
      primaryContainer: _themeClass.white

    ),

  );

  static ThemeData darkMode = ThemeData(
    primaryColor: ThemeData.dark().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.dark().copyWith(
        primary: _themeClass.orange,
        surface: _themeClass.dark_grey,
        secondary: _themeClass.ocean_blue,
        tertiary: _themeClass.orange_light,
        onPrimaryContainer: _themeClass.white,
        primaryContainer: _themeClass.grey
    ),
  );
}

ThemeClass _themeClass = ThemeClass();