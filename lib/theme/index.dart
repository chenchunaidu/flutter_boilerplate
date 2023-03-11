import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/theme/color.dart';
import 'package:flutter_boilerplate/theme/input.dart';

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: brand,
    inputDecorationTheme: darkInputDecorationTheme,
    checkboxTheme: CheckboxThemeData(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      fillColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return brand;
        }
        return Colors.grey;
      }),
    ));

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: brand,
    inputDecorationTheme: darkInputDecorationTheme);
