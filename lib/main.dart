import 'package:flutter/material.dart';
import 'package:flutter_biolerlate/components/layout/get-page-wrapper.dart';
import 'package:flutter_biolerlate/screens/home.dart';
import 'package:flutter_biolerlate/screens/login.dart';
import 'package:flutter_biolerlate/theme/color.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/home',
      getPages: getPageWrapper([
        PageWrapper(path: '/home', child: Home()),
        PageWrapper(path: '/login', child: Login(), navbar: false)
      ]),
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
