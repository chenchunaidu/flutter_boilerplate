import 'package:flutter/material.dart';
import 'package:flutter_biolerlate/components/auth-info.dart';
import 'package:flutter_biolerlate/components/vstack.dart';
import 'package:flutter_biolerlate/theme/font.dart';
import 'package:flutter_biolerlate/theme/inset.dart';
import 'package:get/get.dart';

import '../layout/auth.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  var login = Get.find<AuthController>().login;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(Insets.xl),
        child:
            VStack(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          VStack(
            spacing: Insets.xxl,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AuthInfo(
                label: "Welcome to\nFlutter boilerplate",
                subLabel:
                    "Sign in to Flutter boilerplate to check all features",
              ),
              VStack(spacing: Insets.md, children: [
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(hintText: "Email"),
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(),
                      onPressed: () {
                        login();
                        Get.toNamed('/otp');
                      },
                      child: const Text(
                        "Sent OTP",
                        style: TextStyles.buttonText1,
                      ),
                    ))
              ])
            ],
          )
        ]));
  }
}
