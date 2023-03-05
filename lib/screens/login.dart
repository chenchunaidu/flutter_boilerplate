import 'package:flutter/material.dart';
import 'package:flutter_biolerlate/components/vstack.dart';
import 'package:flutter_biolerlate/theme/font.dart';
import 'package:flutter_biolerlate/theme/inset.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(Insets.xl),
        child: VStack(
          spacing: Insets.xl,
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Email"),
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Password"),
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
          ],
        ));
  }
}
