import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/theme/color.dart';
import 'package:flutter_boilerplate/theme/input.dart';

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: brand,
    inputDecorationTheme: darkInputDecorationTheme);

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: brand,
    inputDecorationTheme: darkInputDecorationTheme);
