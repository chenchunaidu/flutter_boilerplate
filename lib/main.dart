import 'package:flutter/material.dart';
import 'package:flutter_biolerlate/layout/auth.dart';
import 'package:flutter_biolerlate/layout/get-page-wrapper.dart';
import 'package:flutter_biolerlate/screens/account.dart';
import 'package:flutter_biolerlate/screens/calendar.dart';
import 'package:flutter_biolerlate/screens/content.dart';
import 'package:flutter_biolerlate/screens/home.dart';
import 'package:flutter_biolerlate/screens/login.dart';
import 'package:flutter_biolerlate/screens/otp.dart';
import 'package:flutter_biolerlate/theme/color.dart';
import 'package:get/get.dart';

void initialize() {
  // inject authentication controller
  Get.put(AuthController());
}

void main() {
  initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/login',
      getPages: getPageWrapper([
        PageWrapper(path: '/login', child: Login(), navbar: false),
        PageWrapper(path: '/home', child: Home()),
        PageWrapper(path: '/content', child: Content()),
        PageWrapper(path: '/calendar', child: Calendar()),
        PageWrapper(path: '/profile', child: Account()),
        PageWrapper(path: "/otp", child: OTP(), navbar: false)
      ]),
      routingCallback: routingCallback,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: red,
          inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide: BorderSide.none,
              ),
              fillColor: Colors.black54,
              filled: true)),
      home: Home(),
    );
  }
}
