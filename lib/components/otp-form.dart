import 'package:flutter/material.dart';
import 'package:flutter_biolerlate/components/form/index.dart';
import 'package:flutter_biolerlate/theme/font.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'form/validators.dart';
import '../layout/auth.dart';

List<Map<String, dynamic>> otpForm = [
  {
    "name": "otp",
    "placeholder": "OTP",
    "validator": ValidationBuilder(requiredMessage: "OTP is required").build(),
    "helperText": "OTP is 12345 😃",
    "autocorrect": false,
    "obscureText": true,
  }
];

class OTPForm extends StatelessWidget {
  OTPForm({Key? key}) : super(key: key);

  final login = Get.find<AuthController>().login;
  @override
  Widget build(BuildContext context) {
    return CustomForm(
      fields: otpForm,
      onSubmit: (value) {
        print(value);
        if (value["otp"] == "12345") {
          login();
          Get.toNamed('/home');
        }
      },
      submitButtonChild: const Text(
        "Login",
        style: TextStyles.buttonText1,
      ),
    );
  }
}
