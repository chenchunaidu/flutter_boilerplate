import 'package:flutter/material.dart';
import 'package:flutter_biolerlate/screens/home.dart';
import 'package:flutter_biolerlate/theme/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: sky,
      ),
      home: Home(),
    );
  }
}
