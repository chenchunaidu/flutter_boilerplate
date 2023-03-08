import 'package:flutter/material.dart';
import 'package:flutter_biolerlate/components/auth-info.dart';
import 'package:flutter_biolerlate/components/login-form.dart';
import 'package:flutter_biolerlate/components/vstack.dart';
import 'package:flutter_biolerlate/theme/inset.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(Insets.xl),
        child: const VStack(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VStack(
                spacing: Insets.xxl,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AuthInfo(
                    label: "Welcome to\nFlutter boilerplate",
                    subLabel:
                        "Sign in to Flutter boilerplate to check all features",
                  ),
                  LoginForm()
                ],
              )
            ]));
  }
}
