import 'package:flutter/material.dart';
import 'package:flutter_biolerlate/components/auth-info.dart';
import 'package:flutter_biolerlate/components/vstack.dart';
import 'package:flutter_biolerlate/theme/font.dart';
import 'package:flutter_biolerlate/theme/inset.dart';
import 'package:get/get.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<OTP> {
  TextEditingController passwordController = TextEditingController();
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
              VStack(
                  spacing: Insets.lg,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      controller: passwordController,
                      autocorrect: false,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(hintText: "Password"),
                    ),
                    const Text(
                      "OTP is 12345 this is just a boilerplate 😃",
                      style: TextStyles.buttonText2,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(),
                          onPressed: () {
                            if (passwordController.text == "12345") {
                              Get.toNamed('/home');
                            }
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
