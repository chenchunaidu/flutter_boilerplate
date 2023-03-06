import 'package:flutter/material.dart';
import 'package:flutter_biolerlate/components/auth-info.dart';
import 'package:flutter_biolerlate/components/vstack.dart';
import 'package:flutter_biolerlate/theme/font.dart';
import 'package:flutter_biolerlate/theme/inset.dart';
import 'package:get/get.dart';

class OTP extends StatelessWidget {
  const OTP({Key? key}) : super(key: key);

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
                label: "Enter OTP",
                subLabel: "OTP has been sent to your mobile number",
              ),
              VStack(spacing: Insets.md, children: [
                const TextField(
                  autocorrect: false,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(hintText: "Password"),
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(),
                      onPressed: () {
                        Get.toNamed('/home');
                      },
                      child: const Text(
                        "Login",
                        style: TextStyles.buttonText1,
                      ),
                    ))
              ])
            ],
          )
        ]));
  }
}
