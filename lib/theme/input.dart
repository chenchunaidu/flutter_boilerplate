import 'package:flutter/material.dart';

InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(2),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(2),
      borderSide: BorderSide.none,
    ),
    filled: true);

InputDecorationTheme darkInputDecorationTheme = inputDecorationTheme.copyWith(
  fillColor: Colors.black54,
);

InputDecorationTheme lightInputDecorationTheme =
    inputDecorationTheme.copyWith(fillColor: Colors.grey.shade200);
