import 'package:flutter/material.dart';
import 'package:flutter_biolerlate/components/form/index.dart';
import 'package:flutter_biolerlate/theme/font.dart';
import 'package:get/get.dart';
import 'form/validators.dart';

List<Map<String, dynamic>> loginForm = [
  {
    "name": "email",
    "placeholder": "Email",
    "validator": CustomValidators().emailValidator(),
    "keyboardType": TextInputType.emailAddress
  }
];

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomForm(
      fields: loginForm,
      onSubmit: (value) {
        Get.toNamed('/otp');
      },
      submitButtonChild: const Text(
        "Send OTP",
        style: TextStyles.buttonText1,
      ),
    );
  }
}
